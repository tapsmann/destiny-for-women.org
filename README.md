# DWYE Empowerment Trust - Website

A beautiful, modern website for Destiny For Women and Youth Empowerment (DWYE) Trust, a non-profit organization dedicated to empowering women and youth through training, awareness, and opportunity creation.

## Features

- **Responsive Design**: Fully responsive layout that works on all devices (desktop, tablet, mobile)
- **Modern UI/UX**: Clean, professional design with smooth animations and transitions
- **Multiple Pages**: 
  - Homepage with hero section, mission/vision/values, programs overview
  - Services page with detailed program information
  - About page with organization story and impact
  - Contact page with contact form and registration form
- **Accessible**: Semantic HTML and ARIA labels for better accessibility
- **Fast Loading**: Optimized CSS and JavaScript for quick page loads

## Pages

### Homepage (`index.html`)
- Hero section with statistics and call-to-action
- Mission, Vision, and Values cards
- Programs & Services overview
- Call-to-action banner

### Services (`services.html`)
- Detailed information about all programs:
  - Nurse Aide Program
  - Livelihood Programs
  - Child Care Training
  - Industrial First Aid Training
  - Health Awareness Programs
  - Workplace Wellness Programs

### About (`about.html`)
- Organization mission, vision, and values
- Organization story
- Impact statistics
- What we offer overview

### Contact (`contact.html`)
- Contact information
- Contact form
- Program registration form

## File Structure

```
Destiny-for-women/
├── index.html          # Homepage
├── services.html       # Services page
├── about.html         # About page
├── contact.html       # Contact page
├── styles.css         # Main stylesheet
├── script.js          # JavaScript functionality
└── README.md         # This file
```

## Customization

### Colors
The color scheme can be customized in `styles.css` using CSS variables:
- `--primary-pink`: #E91E63
- `--primary-purple`: #7B2CBF
- `--dark-purple`: #5A189A

### Content
All content can be easily updated by editing the HTML files. The structure is semantic and well-organized.

### Forms
Currently, forms show an alert on submission. To connect forms to a backend:
1. Update the form action in `contact.html`
2. Modify the form submission handler in `script.js`

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Contact Information

- **Phone**: +263 774 769 389
- **Email**: cbddestiny@gmail.com
- **Location**: Zimbabwe

## Hosting on GitHub Pages

This website can be hosted for free on GitHub Pages! 

📖 **See [GITHUB_HOSTING_GUIDE.md](GITHUB_HOSTING_GUIDE.md) for detailed step-by-step instructions.**

### Quick Setup:
1. Install Git from [git-scm.com](https://git-scm.com/download/win)
2. Create a GitHub account and repository
3. Run the setup script: `.\setup-github.ps1`
4. Follow the prompts
5. Enable GitHub Pages in repository settings

Your site will be live at: `https://YOUR_USERNAME.github.io/destiny-for-women/`

## License

© 2025 DWYE Empowerment Trust. All rights reserved.

