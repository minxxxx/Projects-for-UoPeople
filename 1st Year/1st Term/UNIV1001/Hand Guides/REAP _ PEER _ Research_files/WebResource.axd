.radmenu
{
	white-space:nowrap;
	float:left;
	position:relative;
}


.radmenu:after 
{
    content: "."; 
    display: block; 
    height: 0; 
    clear: both; 
    visibility: hidden;
}

.radmenu ul.horizontal,
.radmenu ul.vertical
{
	margin:0;
	padding:0;
	display:none;
	position:relative;
	left:0;
	float:left;
}

.radmenu .item
{
	float:left;
	position:relative;
	list-style-image: none;
	list-style-position:outside;
	list-style:none;	
	_display:inline;
}


.radmenu .horizontal .item
{
	clear:none;
}

.radmenu .vertical .item
{
	clear:both;
}


.radmenu ul.active,
.radmenu ul.rootGroup
{
	display:block;
}

.radmenu .slide, 
.contextMenu
{
	position:absolute;
	overflow:hidden;
	display:none;
	_height:1px;
	float:left;
}

.contextMenu
{
	z-index:1000;
}

.radmenu .text
{
	display:block;
}

.radmenu a.link
{
	cursor:default;
	display:block;	
}


.scrollWrap
{
	position:absolute;
	float:left;
	overflow:hidden;
	left:0;
}

.radmenu .leftArrow,
.radmenu .topArrow,
.radmenu .bottomArrow,
.radmenu .rightArrow
{
	position:absolute;
	z-index:2000;
	text-indent:-1000em;
}

.radmenu .leftArrowDisabled,
.radmenu .topArrowDisabled,
.radmenu .bottomArrowDisabled,
.radmenu .rightArrowDisabled
{
	display:none;
	text-indent:-1000em;
}

.radmenu .bottomArrow,
.radmenu .bottomArrowDisabled
{
	margin-bottom: -1px;
}

.radmenu .leftImage
{
	border:0;
	float:left;
}

.rtl
{
	float:right;
}

.rtl ul.horizontal,
.rtl ul.vertical
{
	float:right;
}

.rtl .item
{
	float:right;	
}

.rtl .leftImage,
.rtlcontext .leftImage
{
	border:0;
	float:right;
}

.radmenu ul.rootGroup
{
	float:none;
	_float:left;
}

.radmenu .link
{
	width:auto;
}