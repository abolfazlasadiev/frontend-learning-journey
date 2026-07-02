#!/usr/bin/env bash

set -e

HTML_DIR="100-html-projects"
CSS_DIR="100-css-projects"
OUT_DIR="Frontend-100-Projects"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

# ---------- HTML Projects ----------
declare -A html=(
["001"]="hello"
["002"]="basic-document"
["003"]="headings"
["004"]="paragraphs"
["005"]="text-formatting"
["006"]="lists"
["007"]="nested-lists"
["008"]="hyperlinks"
["009"]="images"
["010"]="figure"
["011"]="tables"
["012"]="complex-tables"
["013"]="comments"
["014"]="div-section"
["015"]="semantic-elements"
["016"]="article-layout"
["017"]="aside"
["018"]="header-footer"
["019"]="navigation"
["020"]="semantic-page"

["021"]="basic-form"
["022"]="login-form"
["023"]="registration-form"
["024"]="contact-form"
["025"]="feedback-form"
["026"]="survey-form"
["027"]="search-form"
["028"]="newsletter-form"
["029"]="radio-buttons"
["030"]="checkboxes"

["031"]="select"
["032"]="textarea"
["033"]="date-input"
["034"]="file-upload"
["035"]="range"
["036"]="color-picker"
["037"]="progress"
["038"]="meter"
["039"]="validation"
["040"]="multi-step-form"

["041"]="audio"
["042"]="video"
["043"]="responsive-image"
["044"]="picture"
["045"]="gallery"
["046"]="youtube"
["047"]="google-map"
["048"]="iframe"
["049"]="download-links"
["050"]="favicon"

["051"]="open-graph"
["052"]="twitter-card"
["053"]="seo"
["054"]="robots"
["055"]="canonical"
["056"]="language"
["057"]="charset"
["058"]="accessibility"
["059"]="aria"
["060"]="screen-reader"

["061"]="blog"
["062"]="news"
["063"]="documentation"
["064"]="faq"
["065"]="pricing"
["066"]="portfolio"
["067"]="resume"
["068"]="landing-page"
["069"]="dashboard"
["070"]="product-page"

["071"]="checkout"
["072"]="shopping-cart"
["073"]="profile"
["074"]="settings"
["075"]="about"
["076"]="services"
["077"]="team"
["078"]="contact"
["079"]="404"
["080"]="sitemap"

["081"]="personal-portfolio"
["082"]="restaurant"
["083"]="ecommerce"
["084"]="school"
["085"]="university"
["086"]="hospital"
["087"]="travel"
["088"]="real-estate"
["089"]="gym"
["090"]="saas"

["091"]="blog-homepage"
["092"]="documentation-site"
["093"]="magazine"
["094"]="admin-dashboard"
["095"]="company"
["096"]="event"
["097"]="ngo"
["098"]="multi-page"
["099"]="accessibility-first"
["100"]="final-project"
)

for n in "${!html[@]}"; do

    dir="$OUT_DIR/${n}-${html[$n]}"
    mkdir -p "$dir"

    touch "$dir/index.html"
    touch "$dir/style.css"
    touch "$dir/script.js"

    cat > "$dir/README.md" <<EOF
# ${html[$n]}

## Goal

-

## Notes

-

EOF

done

cat > "$OUT_DIR/README.md" <<EOF
# Frontend 100 Projects

100 پروژه برای یادگیری HTML + CSS + JavaScript

هر پروژه شامل:

- index.html
- style.css
- script.js
- README.md

EOF

echo
echo "✅ Project structure created."
echo
