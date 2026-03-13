# Java 编码规范

> 基于阿里巴巴 Java 开发手册增强版，适配 Java 17+ 和 Spring Boot 3.x

## 命名规范

- 类名：`UpperCamelCase`（如 `OrderService`、`UserRepository`）
- 方法/变量：`lowerCamelCase`（如 `getUserById`、`orderList`）
- 常量：`UPPER_SNAKE_CASE`（如 `MAX_RETRY_COUNT`）
- 包名：全小写，不使用下划线（如 `com.example.order`）
- 接口以 `I` 开头：`IOrderAppService`、`IOrderRepository`

## 不可变性

- 优先使用 `record` 定义值对象
- 集合类型使用 `List.of()`、`Map.of()` 等不可变实现
- 领域对象的修改通过方法返回新对象或内部状态变更（充血模型）

## Optional 使用

```java
// ❌ 错误：不要用 Optional 作方法参数
public void process(Optional<String> name) { }

// ✅ 正确：只用于返回值
public Optional<User> findById(Long id) {
    return userRepository.findById(id);
}

// ✅ 正确：链式处理
return userRepository.findById(id)
    .map(UserDTO::from)
    .orElseThrow(() -> new NotFoundException("用户不存在: " + id));
```

## 异常处理

- 业务异常继承 `BusinessException`，包含错误码
- 系统异常继承 `SystemException`
- `@ControllerAdvice` 统一处理，不在 Service 层 try-catch 业务异常
- 日志记录异常时必须带上完整 stack trace

```java
// ❌ 错误：吞掉异常
try {
    process();
} catch (Exception e) {
    log.error("出错了");
}

// ✅ 正确：记录完整信息
try {
    process();
} catch (Exception e) {
    log.error("处理失败，订单ID: {}", orderId, e);
    throw new SystemException("处理失败", e);
}
```

## Stream 与集合

```java
// 优先使用 Stream API，避免手动循环
List<OrderDTO> dtos = orders.stream()
    .filter(o -> o.getStatus() == OrderStatus.ACTIVE)
    .map(OrderDTO::from)
    .toList();  // Java 16+ 使用 .toList() 而非 .collect(Collectors.toList())
```

## Spring 注解使用

- `@Transactional` 仅在 AppService 实现类方法上使用
- 构造器注入优先于 `@Autowired` 字段注入
- Controller 使用 `@RestController`，不拆分 `@Controller` + `@ResponseBody`
