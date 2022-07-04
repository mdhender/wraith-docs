BEGIN {
  anchor = "";
  title = "";
}

{
  if ($1 == "--") {
    if (title != "") {
      printf("* <<%s, %s>>\n", anchor, title);
    }
    anchor = "";
    title = "";
  } else if (anchor == "") {
    anchor = $0;
  } else if (title == "") {
    title = $0;
  }
}

END {
  if (title != "") {
    printf("* <<%s, %s>>\n", anchor, title);
  }
}
