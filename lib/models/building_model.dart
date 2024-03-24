class Building {
  final String name;
  final String imagePath;
  final String info;
  final String videoPath;

  const Building({
    required this.name, 
    required this.imagePath,
    required this.info,
    required this.videoPath,
  });

  static const List<Building> buildings = [
    Building(
      name: 'Faculty of Business', 
      imagePath: 
          'lib/assets/Faculty of Business.jpg', 
      info:'The Faculty of Business of NSBM is the ideal faculty for any undergraduate interested in pursuing a career in the Business field. The Faculty nurtures students with a business mind and moulds them into fully-fledged business leaders of the future. The drive behind achieving this goal is the passion for excellence and perfection that surrounds the Faculty of Business in its methods of teaching, learning, research and networking with the business community.',
      videoPath: 'lib/assets/videos/videoplayback.mp4'
      ),
    Building(
      name: 'Faculty of Computing', 
      imagePath: 
          'lib/assets/Faculty of Computing.jpg', 
      info:'Faculty of Computing (FOC) provides world-class education and training in Computing and Information Technology, both at the undergraduate as well as postgraduate levels. FOC offers University Grants Commission’s approved degree programmes in multiple disciplines. It has also partnered with the world top ranking universities, University of Plymouth in UK and Victoria University in Australia, to provide undergraduates with highly recognized International Degrees.',
      videoPath: 'lib/assets/videos/videoplayback.mp4'
      ),
    Building(
      name: 'Faculty of Engineering', 
      imagePath: 
          'lib/assets/Faculty of Engineering.jpg',  
      info:'Welcome to NSBM Faculty of Engineering, your destination to become next-generation engineers to shape up the future world. Our plethora of degrees is carefully crafted to industry needs suiting your liking with great practical exposure. The Faculty consists of the most sophisticated engineering training facilities in the country, including smart laboratories with remote access. You will be guided and trained by a leading full-time and part-time faculty with vast experience in the field.',
      videoPath: 'lib/assets/videos/videoplayback.mp4'
      ),
    Building(
      name: 'Faculty of Science', 
      imagePath: 
          'lib/assets/Faculty of Science.jpg',  
      info:'With the vision of being an academic community with excellence and impact in Science education and research, the Faculty of Science will serve the environmental and industrial needs by producing highly qualified scientists to meet the needs of the market, besides conducting pure and applied researches to support our national development. To accomplish this, the faculty will dedicate itself to achieve distinction in teaching through designing and offering innovative programmes.',
      videoPath: 'lib/assets/videos/videoplayback.mp4'
      ),
    Building(
      name: 'Faculty of Postgraduate Studies', 
      imagePath: 
          'lib/assets/Faculty of Postgraduate Studies.jpg',  
      info:'Established under the purview of the Ministry of Education, NSBM offers a plethora of exciting and intellectually enhancing programmes via the Faculty of Postgraduate Studies and Professional Advancement. The range of courses consists of Certificate, Advanced Certificate, and Diploma level programmes, which lead to Postgraduate Diplomas and MBA programmes approved by the University Grants Commission (UGC) and the Ministry of Higher Education.',
      videoPath: 'lib/assets/videos/videoplayback.mp4'
      ),
  ];
}
