# Brain MRI Tracer Animation (Processing)

This project generates an animated GIF using **Processing** and the **GifAnimation** library.  
The effect simulates particles (“traceurs”) that follow brightness gradients in an axial MRI slice of the human brain.

The result is a dynamic visualization that blends medical imaging, computational art, and particle-based simulation, producing an evolving texture shaped directly by brain morphology. The code captures each frame and exports a high-quality GIF using the GifAnimation library.

This project demonstrates:

- How pixel intensities in MRI can be used to guide particle movement

- How to create generative art from scientific imaging

- How to produce frame-by-frame animations in Processing

- A visually compelling way to explore MRI datasets

It is ideal for neuroscience outreach, generative art experiments, or educational visualization of image-based data.
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
