<!-- ./resources/views/welcome.blade.php -->

<!DOCTYPE html>
<html lang="<?php echo e(config('app.locale')); ?>">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">

  <title>News Talk</title>

  <!-- Styles -->
  <link href="<?php echo e(asset('css/app.css')); ?>" rel="stylesheet">
  <link href="<?php echo e(asset('css/notifit.css')); ?>" rel="stylesheet">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="<?php echo e(asset('js/notifit.js')); ?>"></script>


  <style>
    .container {
      padding-top: 100px;
    }
  </style>

  <!-- Scripts -->
  <script>
    window.Laravel = <?php echo json_encode([
      'csrfToken' => csrf_token(),
    ]); ?>;
  </script>
</head>
<body>

  <div id="app">
    <!-- home Vue component -->
    <home></home>
    <example></example>
  </div>

  <!-- Scripts -->
  <script src="<?php echo e(asset('js/app.js')); ?>"></script>
</body>
</html>
