# Resizing Images

```python
import IPython.display as display
from PIL import Image

images = list(data_dir.glob(f'{class_name}/*'))

for image_path in images[:1]:
    im = Image.open(str(image_path))
    display.display(im)
```

```python
from PIL import Image

images = list(data_dir.glob(f'{class_name}/*'))

for image_path in images[:1]:
    im = Image.open(str(image_path))
    im = im.resize((500,500))
    display.display(im)
    print(im.size)
    print(type(im.size))
```

```python
images = list(data_dir.glob(f'{class_name}/*'))

for image_path in images[:1]:
    # original image size
    im = Image.open(str(image_path))
    w, h = im.size
    w_resize = w
    h_resize = h
    print('width: ', w)
    print('height:', h)
    display.display(im)

    # resize image
    im = Image.open(str(image_path))
    w, h = im.size
    print('width: ', w)
    print('height:', h)
    percent_resize = 0.40
    im = im.resize((w_resize, h_resize))
    display.display(im)
    im = im.resize((int(w*percent_resize), int(h*percent_resize)))
    display.display(im)
 ```
 
