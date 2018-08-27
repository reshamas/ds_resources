# Deep Learning

## Terms

### Batch Normalization (BN)
- speeds up training by by preventing significant shifts in the distribution of inputs to each layer
- BN also allows us to significantly increase the learning rate
- BN acts like a **regularizer** and removes the need for **dropout** and **L2 regularization**
- batch regularization largely removes the need for for photometric distortions, and we can expose the network to more "real" images during the training process

### FC = fully connected

---
## (popular) Adaptive Learning Rate Algorithms
Concept:  the optimal learning rate is appropriately modified over the span of learning to achieve good convergence properties.

### AdaGrad
- adapts the global learning rate over time using an accumulation of the historical gradients
- POSITIVES:  works well for simple convex functions
- NEGATIVES:  flat regions may force AdaGrad to decrease the learning rate before it reaches its minimum

### RMSProp (exponentially weighted moving average of gradients)
- POSITIVES:  
    - better navigates complex error surfaces of deep networks
    - allows us to "toss out" measurements we made a long time ago
- has been shown to be a highly effective optimizer for deep neural networks; and a default choice for many seasoned practitioners



---
### Residual / Skip Connections
Residual connections and skip connections are used interchangeably. These types of connections can skip multiple layers (see page 4 of the original ResNet paper), not just one. In short, residual connections are used to make deeper networks easier to optimize.[1]
- paper:  [Deep Residual Learning for Image Recognition](https://arxiv.org/pdf/1512.03385.pdf)

### Residual Network
Residual neural networks do this by utilizing skip connections or short-cuts to jump over some layers. In its limit as ResNets it will only skip over a single layer.[1] With an additional weight matrix to learn the skip weights it is referred to as HighwayNets.[2] With several parallel skips it is referred to as DenseNets.[3] In comparison, a non-residual neural network is described as a plain network in the context of residual neural networks.  
- https://en.wikipedia.org/wiki/Residual_neural_network




## References
- book: [Fundamentals of Deep Learning](http://shop.oreilly.com/product/0636920039709.do)
