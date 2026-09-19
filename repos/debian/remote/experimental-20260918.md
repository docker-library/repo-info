## `debian:experimental-20260918`

```console
$ docker pull debian@sha256:9d80a9fa170850ba04cca1a6960238b7b7cb4efca2bf40d8782ce28284ebd04b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `debian:experimental-20260918` - linux; arm variant v7

```console
$ docker pull debian@sha256:3787ced271cbc3ec92889aa79f5f925578c635824f44fef8a3a6df9d23d0c1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45923215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f10486a84f41bae66fa0410014d1075de60b685615d34756a26fca20244301d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:14:09 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:a114cfa6211004930f94d41831ae48cec12f306932ec251a20d8540051ce231a`  
		Last Modified: Sat, 19 Sep 2026 00:03:41 GMT  
		Size: 45.9 MB (45922994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfdad9909692c21873296333a4b29b999c7ecb32a047eb6efdaa52d21b98c0a`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20260918` - unknown; unknown

```console
$ docker pull debian@sha256:b1c82446c445c90c3788a9121176adcd80eb5f42088f1bb839c1053950aedb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3192211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:258ba958d423ece47789d22cda12d0d0647c5436453a88a99eb29d58d16124b9`

```dockerfile
```

-	Layers:
	-	`sha256:b6ca1d1b4c99c8313a15fb0b50a77c7feefc8044b12ff3cc0ab526d1618f4baf`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 3.2 MB (3186046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01b49a441f755c4f0b3410c490dd9623be837971fb3265544c1c63699da700ae`  
		Last Modified: Sat, 19 Sep 2026 00:14:15 GMT  
		Size: 6.2 KB (6165 bytes)  
		MIME: application/vnd.in-toto+json

### `debian:experimental-20260918` - linux; arm64 variant v8

```console
$ docker pull debian@sha256:c105a8621d6020b2f74b1ce1e837fcf0b6d75c216e1784328797a30d7730c602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49044938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fb1b469213ed532ab176219a6a814fc4349a673622230a2b8ad6e995e7e258e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'unstable' '@1789689600'
# Sat, 19 Sep 2026 00:12:52 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list # buildkit
```

-	Layers:
	-	`sha256:8ab480d513e9497dd82fd65da41cc20e2640460efb9426fe28853ac55893bc64`  
		Last Modified: Sat, 19 Sep 2026 00:06:14 GMT  
		Size: 49.0 MB (49044718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582a0d1b411727b5b29c77c3335c4e96f58fe91093cabd4a189ce0912d8cd843`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `debian:experimental-20260918` - unknown; unknown

```console
$ docker pull debian@sha256:7164e061b1720e7d419ef4eb4da6b67f4edc727cad433d083d8ab8e0801e9af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3194153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3acae42baf73daca82666528f2479e68f9863998f343f8cfcc0ec4cb999eb2d`

```dockerfile
```

-	Layers:
	-	`sha256:553062b10f85a9536abe1fe5c1cd8444c87a1207cb9a1163e68e441211bc6a9e`  
		Last Modified: Sat, 19 Sep 2026 00:12:59 GMT  
		Size: 3.2 MB (3187972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c12ba09a75374d73b0c6479602e66c53f2e1f39ef413add60bdd9540294cd347`  
		Last Modified: Sat, 19 Sep 2026 00:12:58 GMT  
		Size: 6.2 KB (6181 bytes)  
		MIME: application/vnd.in-toto+json
