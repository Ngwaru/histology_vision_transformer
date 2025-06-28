from taipy.gui import Gui
import numpy as np
import torch
from PIL import Image

MODEL_PATH = ""

content = ""

img_path = "placeholder.jpg"

prob = 0

display_message = ""

model = torch.load(MODEL_PATH, weights_only=False)

def classify_pic(model, path_to_image):
    image = Image.open(path_to_image)
    image = image.convert("RGB")
    image = image.resize((156, 156))
    data = np.assarray(image)
    data = data/255

    return model(data).detach().cpu()




app = Gui()


if __name__=="__main__":
    app.run(use_reloader=True)