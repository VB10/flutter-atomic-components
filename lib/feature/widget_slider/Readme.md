# WidgetSlider
İstediğiniz miktarda widget'ı istediğiniz hızda, dikey veya yatay olarak ekranda kaydırabilirsiniz.
Cache extent parametresinin ekran genişliğinde olmasıyla performans sıkıntısı yaşamayacaksınızdır.

## Çalışma Mantığı

WidgetSlider(
  slideAxis: , --> Axis.horizontal || Axis.vertical
  slideCount: , -->  1 || 100 || 1000000000 istediğiniz kadar max int değerini aşmadığı sürece problem yaşamadan çalıştırabilirsiniz.
  slidingSpeed: , --> Slider'ın her 100ms de alacağı mesafe default olarak 10 değerindedir. Daha smooth geçişler için küçük değerler tavsiye edilir
  spacing: , --> Child'lar arasında ki mesafe
  children: <Widget>[] --> widget türünden nesneler. 
  ),

