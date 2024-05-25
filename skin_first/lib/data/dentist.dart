class Dentist {
  static final List<Map<String, String>> dentistInformation = <Map<String, String>>[
    <String, String>{
      'id': '1',
      'name': 'Angelica Krisha Cabe',
      'specialization': 'Periodontics',
      'rating': '5.5',
      'comments': '40',
      'schedule_days': 'Mon-Sat',
      'time': '9:00AM - 5:00PM',
      'profile_text':
          'Dolore tempor cupidatat nostrud commodo voluptate duis amet aute occaecat. Amet aute dolore velit laborum officia. Commodo aliqua ut elit dolore ea quis duis adipisicing labore. Voluptate tempor non aliquip magna duis irure minim deserunt dolore esse ad.',
      'carrer_path_text':
          'Non tempor sunt nisi ullamco sunt fugiat esse irure deserunt ipsum occaecat nisi exercitation sit. Non non consectetur non tempor esse officia in. Eu sint cupidatat culpa dolore amet officia aute cupidatat cillum eu. Cillum deserunt minim cupidatat qui est anim est commodo ut ipsum consectetur dolore pariatur fugiat.',
      'highlights_text':
          'Reprehenderit officia proident magna commodo excepteur laboris laborum ullamco. Sunt enim adipisicing laborum mollit cupidatat cupidatat reprehenderit et mollit magna do non amet ea. Et laborum esse et Lorem officia duis ipsum esse ipsum ad. Aute sit cupidatat mollit magna eu consequat. Qui aliquip ad duis in non mollit ullamco duis non. Ullamco amet irure tempor dolore excepteur. Deserunt ipsum aliquip sunt exercitation culpa exercitation esse adipisicing velit est in eiusmod anim.'
    },
    <String, String>{
      'id': '2',
      'name': 'Jonathan Reed',
      'specialization': 'Orthodontics',
      'rating': '4.7',
      'comments': '25',
      'schedule_days': 'Tue-Fri',
      'time': '10:00AM - 6:00PM',
      'profile_text':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada.',
      'carrer_path_text':
          'Proin et arcu vel arcu posuere auctor at eu risus. Suspendisse potenti. Sed in urna eu nisi consequat dictum. Proin a arcu in mi placerat ullamcorper.',
      'highlights_text':
          'Donec consectetur ligula id viverra auctor. Cras malesuada placerat felis, sit amet tempor nisl. Duis at facilisis lorem. Nulla facilisi.'
    },
    <String, String>{
      'id': '3',
      'name': 'Sophia Williams',
      'specialization': 'Pediatric Dentistry',
      'rating': '4.9',
      'comments': '30',
      'schedule_days': 'Mon, Wed, Fri',
      'time': '8:00AM - 4:00PM',
      'profile_text':
          'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.',
      'carrer_path_text': 'Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'highlights_text':
          'Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum.'
    },
    <String, String>{
      'id': '4',
      'name': 'Liam Johnson',
      'specialization': 'Endodontics',
      'rating': '4.5',
      'comments': '18',
      'schedule_days': 'Mon-Thurs',
      'time': '9:00AM - 3:00PM',
      'profile_text':
          'Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae.',
      'carrer_path_text': 'Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'highlights_text':
          'Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'
    },
    <String, String>{
      'id': '5',
      'name': 'Emma Thompson',
      'specialization': 'Oral Surgery',
      'rating': '4.8',
      'comments': '22',
      'schedule_days': 'Mon-Wed, Fri',
      'time': '11:00AM - 7:00PM',
      'profile_text':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras venenatis euismod malesuada. Vivamus lacinia odio vitae vestibulum vestibulum.',
      'carrer_path_text': 'Proin et arcu vel arcu posuere auctor at eu risus. Suspendisse potenti. Sed in urna eu nisi consequat dictum.',
      'highlights_text':
          'Cras malesuada placerat felis, sit amet tempor nisl. Duis at facilisis lorem. Nulla facilisi. Donec consectetur ligula id viverra auctor.'
    },
    <String, String>{
      'id': '6',
      'name': 'Michael Brown',
      'specialization': 'Prosthodontics',
      'rating': '4.6',
      'comments': '20',
      'schedule_days': 'Tue-Fri',
      'time': '10:00AM - 5:00PM',
      'profile_text':
          'Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
      'carrer_path_text': 'Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'highlights_text':
          'Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.'
    },
    <String, String>{
      'id': '7',
      'name': 'Olivia Davis',
      'specialization': 'Cosmetic Dentistry',
      'rating': '4.7',
      'comments': '35',
      'schedule_days': 'Mon-Fri',
      'time': '9:00AM - 6:00PM',
      'profile_text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'carrer_path_text': 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'highlights_text': 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
    },
    <String, String>{
      'id': '8',
      'name': 'Ethan Martinez',
      'specialization': 'General Dentistry',
      'rating': '4.8',
      'comments': '28',
      'schedule_days': 'Tue-Sat',
      'time': '8:00AM - 4:00PM',
      'profile_text': 'Consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada.',
      'carrer_path_text': 'Suspendisse potenti. Sed in urna eu nisi consequat dictum. Proin a arcu in mi placerat ullamcorper.',
      'highlights_text': 'Donec consectetur ligula id viverra auctor. Cras malesuada placerat felis, sit amet tempor nisl. Duis at facilisis lorem.'
    },
    <String, String>{
      'id': '9',
      'name': 'Isabella Hernandez',
      'specialization': 'Oral Pathology',
      'rating': '4.5',
      'comments': '15',
      'schedule_days': 'Mon, Wed, Thurs',
      'time': '9:00AM - 5:00PM',
      'profile_text':
          'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.',
      'carrer_path_text': 'Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'highlights_text':
          'Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi.'
    },
    <String, String>{
      'id': '10',
      'name': 'Alexander Lee',
      'specialization': 'Public Health Dentistry',
      'rating': '4.9',
      'comments': '32',
      'schedule_days': 'Mon-Fri',
      'time': '8:00AM - 4:00PM',
      'profile_text':
          'Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae.',
      'carrer_path_text': 'Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.',
      'highlights_text':
          'Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.'
    },
  ];
}
