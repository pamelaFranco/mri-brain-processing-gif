# 🧠 Brain MRI Tracer Animation (Processing)

This project generates an animated GIF using **Processing** and the **GifAnimation** library.  
Particles (“traceurs”) follow brightness gradients in an axial MRI slice, creating a dynamic texture shaped by brain morphology.

Key features:

- Particles guided by MRI pixel intensities
- Generative art from scientific imaging
- Frame-by-frame GIF animation
- Educational and visually compelling visualization of MRI data

Ideal for neuroscience outreach, generative art experiments, or educational demonstrations of image-based datasets.

---
## ✨ Visualization Concept

Each particle follows the lowest brightness direction, creating flow fields shaped by MRI image intensity.
This produces an artistic representation of brain structures.

---
## 📂 Project Structure

```text
brain-mri-procedding-gif/
|
|-- tracking_particle/
|   `-- tracking_particle.pde        # Processing code
|
|-- images/
|   |-- brain.png                   # Original MRI slice
|   `-- brain_tp.png                # Generated GIF
|
`-- README.md                       # Project documentation
```

---

## ▶️ Running the Code

1. Install **Processing** (https://processing.org/)
2. Open the file: processing/trcking_particle.pde
3. Place `brain.png` in the same folder
4. Run the sketch  
5. The program generates and saves the GIF

---

## 🎨 Example Output

![Brain Pixel Art](images/brain_tp.gif)

---

## 📝 Requirements

- Processing 4.x
- A PNG or JPG MRI slice

---

## 📜 License

MIT License — free to use, modify, and share.

---

## ✨ Author

Created for fun, art, and scientific communication 
Visit:  https://www.instagram.com/neuro_artint/ 🎄🧠  
