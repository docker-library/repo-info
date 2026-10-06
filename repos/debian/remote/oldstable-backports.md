## `debian:oldstable-backports`

```console
$ docker pull debian@sha256:2e21cae149872d0797ba6067ab8b20b8138a3662d8a3f9a6e02bdc1228c5d86f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `debian:oldstable-backports` - linux; amd64

```console
$ docker pull debian@sha256:f3563d6f01fe55babd0762970d7866fdad2c68a8d44e4ff1c03411d1623d83c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48503670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0ad993c59824b7e7099e6ff3c95a258b7faef4300e56367245c052e7fc33ef`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'oldstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:12 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:3aae93f03e47f0ba1ca06d5c6113f34d49875f780715ce7e1e91961b7cb818da`  
		Last Modified: Sat, 19 Sep 2026 00:03:59 GMT  
		Size: 48.5 MB (48503445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea7b9de51df8c5a5d5021ba7ace9c370344d10e4c7a9eb40a3e540eada4a419`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:97fb764f96ea485224f33072fde137c6d4a78a775d016213c7462aaf308c828f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3739993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22936b652a15834d378afdc3938d29a3ee541be8da97df4c49cef14dceacdc5b`

```dockerfile
```

-	Layers:
	-	`sha256:28226e8b4ef0b6e188d8e5ba16363a8cd18e4be1edc3a302a4729a519528dafa`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 3.7 MB (3734184 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a4e3dd88d1098568cc5237585fe128b24cb14269675ef03f7449cc67b0b7d91`  
		Last Modified: Sat, 19 Sep 2026 00:12:19 GMT  
		Size: 5.8 KB (5809 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm variant v7

```console
$ docker pull debian@sha256:c8edc446df59781acc9a2804683db0412f8642a7224cc45ad925db725207266b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44214142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372fa1bea8fbc535d46cc536e6fcbb464f273fc8da15110bb3573cc77704037b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'oldstable' '@1791158400'
# Tue, 06 Oct 2026 01:14:09 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:f65af47aedd28edd486b09c82bc2b552fa16b658bd52eebe22bab9e7181c556e`  
		Last Modified: Tue, 06 Oct 2026 00:13:46 GMT  
		Size: 44.2 MB (44213917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb3e8bb5e23bee31ff5f0cd80953cb19701444a22dcf604cc10fe5ffe56d854`  
		Last Modified: Tue, 06 Oct 2026 01:14:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:5e5acd91571ac6162baa630557e4a8ac4e7e13749049c24c39bddb2f655363d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d640a84e15acf57afa2cd95f873a078198895d41d7f52d20f17547e324e11276`

```dockerfile
```

-	Layers:
	-	`sha256:2c67588eb3294b70f24c80676fd1cff76c07f43bfa5d0b364f67c6e6a002f452`  
		Last Modified: Tue, 06 Oct 2026 01:14:16 GMT  
		Size: 3.7 MB (3736363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0601a27513a2ea4e19e8b096878a9f2bad1616b22037ac0abcdab93d6bcd0eb6`  
		Last Modified: Tue, 06 Oct 2026 01:14:15 GMT  
		Size: 5.9 KB (5866 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:d7a02851c89e7fbddd5a882e71b582ad334a8258ca97da0b5e000468bea1044d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.4 MB (48390142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a77cf9b3a84c460c0b50041565a2b8d364b1f5b72683ab133435b21961b97be0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'oldstable' '@1789689600'
# Sat, 19 Sep 2026 00:11:59 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2764c4de57bb2bd517596922dd93d700a5369bce63f7875d3d67bef3c1bf7f0b`  
		Last Modified: Sat, 19 Sep 2026 00:03:46 GMT  
		Size: 48.4 MB (48389919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101cefb2383abf480cafe91b7181e03b85cf0a238d0298ed4305b8ae0337937a`  
		Last Modified: Sat, 19 Sep 2026 00:12:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:d4b344b300fedc90f528c64f042396f524559b2385180cfe58a76cdb9fdce260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3740277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad590e22088c409a35ce1004ccb6cd9403da3bbdf416eb290dfd261da3825cf`

```dockerfile
```

-	Layers:
	-	`sha256:599f829eee8fa1063c60776ba3703db3e26b57b7cfdaad3acf9b7bcb72ab9529`  
		Last Modified: Sat, 19 Sep 2026 00:12:06 GMT  
		Size: 3.7 MB (3734399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3dc1c34b0aaedb798b4f6861459058705a58879f973fe3d14ba927426052780`  
		Last Modified: Sat, 19 Sep 2026 00:12:05 GMT  
		Size: 5.9 KB (5878 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; 386

```console
$ docker pull debian@sha256:fcbe7c263db482ec44f9b124e607082243292ccec3cfbd1d7fca38310f2d20b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49491633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736bd760378c067e72773422ff7eb766b18dddbc8a6e3d1543e87c18b733eba0`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'oldstable' '@1789689600'
# Sat, 19 Sep 2026 00:13:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:2584165c154fef4c50963e717693b7c42819bb49517bbb46811fe302c6912ff9`  
		Last Modified: Sat, 19 Sep 2026 00:03:55 GMT  
		Size: 49.5 MB (49491408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18436b6554f04a0c658ba4fa7de57d794135b7eccdad5bd2c782d2e4e44c7cf`  
		Last Modified: Sat, 19 Sep 2026 00:13:39 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:1a779cd4b65989e5b0cf768a76a04ed374d0226a2325e7b2cbfc78e3052547a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3737172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fefd1d4edbbac955fe10798a1fa7a85bd9222ca0b29e6712a5fbe64f4aff71b7`

```dockerfile
```

-	Layers:
	-	`sha256:9e5f3b62327db4a71bce7436412795885adea66ba0c8c6a1a5b2258b1a7e9949`  
		Last Modified: Sat, 19 Sep 2026 00:13:40 GMT  
		Size: 3.7 MB (3731380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f34fbb1644d75d060ae132b5a4abbd4c9e6189028a7cc492a4ed10c62d451fdf`  
		Last Modified: Sat, 19 Sep 2026 00:13:39 GMT  
		Size: 5.8 KB (5792 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:oldstable-backports` - linux; ppc64le

```console
$ docker pull debian@sha256:32d8c6834afebbc33d08851b007e3d10ba01e98c2472c8daec2efa3740818da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52362969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fada5c0b49877373237838b779d052695b54ecc33e2f50169a6500308bdd45e1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'oldstable' '@1791158400'
# Tue, 06 Oct 2026 01:15:33 GMT
RUN echo 'deb http://deb.debian.org/debian oldstable-backports main' > /etc/apt/sources.list.d/backports.list # buildkit
```

-	Layers:
	-	`sha256:af8d1e73a085fe54c90a9a1fbc0241d48bcecebac227c1a77820a1dc3edd10b3`  
		Last Modified: Tue, 06 Oct 2026 00:13:32 GMT  
		Size: 52.4 MB (52362744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf26797a99b54e4f9f391a4709ddc6c6084ef7f29472ae495b8bb515b0a5d45`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:oldstable-backports` - unknown; unknown

```console
$ docker pull debian@sha256:25bcc7a0d56b83092b45e5ab1be4589fcad64f0fab95eab08fe022e0ff258a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e951efbcc2ed0287b8cb8bddaa0f621f85b70d5e0392ff526a490e38ae7c83aa`

```dockerfile
```

-	Layers:
	-	`sha256:e04eaca38c6e3838fd29ca040cf5c2956449d93f77aa5990a7bd1f4f14a528a8`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 3.7 MB (3738542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0de6064970bb8edacf5e3946115ab9c4c8d6721a3e742638a5c49c361ff8f3e2`  
		Last Modified: Tue, 06 Oct 2026 01:15:55 GMT  
		Size: 5.8 KB (5836 bytes)  
		MIME: application/vnd.in-toto+json
