@bg: #fdfaf1;
@water: #f0f3f4;
@crop: #fec;

Map {
  background-color: @bg;
}

#waterway.casing::casing {
  [class != 'drain'] {
    line-color: darken(@water, 15%);
    line-cap: round;
    [zoom>=8]{ line-width: 0; }
    [zoom>=10]{ line-width: 1; }
    [zoom>=12]{ line-width: 2; }
    [zoom>=14]{ line-width: 3; }
  }
  [class = 'drain'] {
    line-color: darken(@water, 15%);
    [zoom>=8]{ line-width: 0.6; }
    [zoom>=10]{ line-width: 0.5; }
    [zoom>=12]{ line-width: 1; }
    [zoom>=14]{ line-width: 1.5; }
  }
}

#waterway.fill::fill {
  [class != 'drain'] {
    line-color: @water;
    line-cap: round;
    [zoom>=8]{ line-width: 0.6; }
    [zoom>=10]{ line-width: 0.5; }
    [zoom>=12]{ line-width: 1; }
    [zoom>=14]{ line-width: 1.5; }
  }
  [class = 'drain'] {
    line-dasharray: 6,4;
    line-color: @water;
    [zoom>=8]{ line-width: 0.6; }
    [zoom>=10]{ line-width: 0.5; }
    [zoom>=12]{ line-width: 1; }
    [zoom>=14]{ line-width: 1.5; }
  }
}

#water {
  polygon-fill: @water;
  line-color: darken(@water, 10%);
  line-width: 1;
  [zoom>=11] { line-width: 0.8; }
}

#building {
  polygon-fill: #cecece;
}

#road,
#bridge {
  line-color: #999;
  line-width: 0.3;
  [zoom>=10]{ line-width: 0.5; }
  [zoom>=12]{
    line-width: 0.5;
    [class='motorway'],
    [class='motorway_link'],
    [class='main'] {
      line-width: 0.9; 
    }
  }
  [zoom>=12]{
    line-width: 0.6;
    [class='motorway'],
    [class='motorway_link'],
    [class='main'] {
      line-width: 1.2; 
    }
  }
}

#bridge::aerialway [class='aerialway'] {
  line-color: #999;
  [zoom >= 12] {
    line-width: 3;
    line-dasharray: 0.5, 5;
  }
  [zoom >= 14] {
    line-width: 4;
    line-dasharray: 0.8, 8;
  }
}

#admin[admin_level=2][maritime=0] {
  ::halo {
    line-color: #ffcd6a;
    line-join: round;
    line-cap: round;
    line-smooth: 1;
    line-opacity: 0.8;
    [zoom>=6] { line-width: 3; }
    [zoom>=9] { line-width: 2.5; }
    [zoom>=10] { line-width: 3; }
    [zoom>=11]{ line-width: 4; }
    [zoom>=12]{ line-width: 5; }
    [zoom>=14]{ line-width: 6; }
  }
  ::case {
    line-color: #666; 
    line-join: round;
    line-cap: round;
    line-smooth: 1;
    line-width: 2;
    [zoom>=7] { line-width: 1.5; }
    [zoom>=9] { line-width: 1; }
    [zoom>=11]{ line-width: 2; }
  }
  ::fill {
    line-color: white;
    line-join: round;
    line-cap: round;
    line-dasharray: 3,2;
    line-smooth: 1;
    line-width: 1;
    [zoom>=7] { line-width: 0.7; }
    [zoom>=9] { line-width: 0.6; }
    [zoom>=11]{ line-width: 1.2; line-dasharray: 5,3; }
  }
}

#admin[admin_level=4] {
  ::halo {
    line-color: white;
    line-opacity: 0.6;
    [zoom>=7] { line-width: 2; }
    [zoom>=9] { line-width: 2; }
    [zoom>=10]{ line-width: 3; }
    [zoom>=12]{ line-width: 4; }
    [zoom>=14]{ line-width: 6; }
  }
  ::fill {
    line-color: #838383;
    line-width: 0.4;
    [zoom>=7] { line-width: 0.4; line-dasharray: 2,1; }
    [zoom>=9] { line-width: 0.8; line-dasharray: 4,2; }
    [zoom>=11]{ line-width: 1; line-dasharray: 8,6; }
    [zoom>=14]{ line-width: 1.2; line-dasharray: 10,8; }
  }
}