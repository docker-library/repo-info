## `openjdk:28-ea-9-trixie`

```console
$ docker pull openjdk@sha256:4a93934802b6fde9f35d9e0031ba302bb47a9a90069bb087ecce43048bd5a040
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-9-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:6c0384228e12f99b3151a2127b0a025ef75957e4465ce3773dc19bd8e7be6c7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.2 MB (380234202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760b58d3048edd839fa26531d65add889e9f7c6634dd342b95f66dafa409024b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:33:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:19:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:21:44 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 05 Aug 2026 02:21:44 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:21:44 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:21:44 GMT
ENV JAVA_VERSION=28-ea+9
# Wed, 05 Aug 2026 02:21:44 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:21:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68b64c51cda3d04397bcf5742a29a9a1ba7adcfd18a376bacb8d114ed64cbd5a`  
		Last Modified: Wed, 05 Aug 2026 00:45:14 GMT  
		Size: 25.6 MB (25638637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec935196e6a095bdd6ac865248321ea4fd33424071fe14264cd33900f8ae6212`  
		Last Modified: Wed, 05 Aug 2026 01:33:41 GMT  
		Size: 67.8 MB (67797999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d843df64e218fd660ce863a688de60a5a2906143b26527e346f452f9378b3c2`  
		Last Modified: Wed, 05 Aug 2026 02:20:29 GMT  
		Size: 16.1 MB (16066014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7af1734a57913fcbdd7dc98bc8e77d2ecf5b16e66e4612b1bfb6b56904cb7a`  
		Last Modified: Wed, 05 Aug 2026 02:22:12 GMT  
		Size: 221.4 MB (221419238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:b8cc85dd92d995596f0511810bb69e50bc3c2d56ed33e9f2afc2a3bdab4a1555
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8526905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203d12ce17a7464fc7643ddab96c5db8efede0e28e69b63eedcce26807f7c298`

```dockerfile
```

-	Layers:
	-	`sha256:94dddeb13c4d94931126389da82ef5f43fb0c90243a5a7ea067b4f812188d351`  
		Last Modified: Wed, 05 Aug 2026 02:22:08 GMT  
		Size: 8.5 MB (8509009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d8dbaa6628718d7c86ec46e717bba436efa44ad669ab842616ef67f420bd894`  
		Last Modified: Wed, 05 Aug 2026 02:22:07 GMT  
		Size: 17.9 KB (17896 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-9-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2fa785c7fb9fe6215b6c00fadeaf93dfa17309e3570969430b5f1e83349f9dc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377862301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb024210a0694e0ca95908d1e14a9fe96f260fdf0ddb6648e9c5338f0e709943`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 02:22:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 02:23:06 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Wed, 05 Aug 2026 02:23:06 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 02:23:06 GMT
ENV LANG=C.UTF-8
# Wed, 05 Aug 2026 02:23:06 GMT
ENV JAVA_VERSION=28-ea+9
# Wed, 05 Aug 2026 02:23:06 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Wed, 05 Aug 2026 02:23:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3df26e3af2ffa164164818cbb63174def2450bcdee94680a9fe9f3ecaddbee`  
		Last Modified: Wed, 05 Aug 2026 00:47:38 GMT  
		Size: 25.0 MB (25026975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50fe3346a36b8a110ecc263e7e06ae8e67594eceaf987bbc84fa7ceb29b1a6cd`  
		Last Modified: Wed, 05 Aug 2026 01:40:24 GMT  
		Size: 67.6 MB (67600081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21f5970df6dec9ca028c04383ad3c870dd718b499bcf803c7321729ac8ea376`  
		Last Modified: Wed, 05 Aug 2026 02:23:32 GMT  
		Size: 16.1 MB (16071333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:331f0752f952586f47b53abec058359329e31d75ad431662e20fbdd89e2a5408`  
		Last Modified: Wed, 05 Aug 2026 02:23:35 GMT  
		Size: 219.5 MB (219490066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:531bc0e45769617d6d840595f137b30077943f0a71bb40a6b8bacf157b8a09bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8721177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8180eeb61ba5558ae9c985e9c4ad0fcd9815336a87095d71e007cfbfc77cadd`

```dockerfile
```

-	Layers:
	-	`sha256:34bbf511adb7b55e121fcb869d5fec991c2e07dc7c375ddc668c7a87e8a0b586`  
		Last Modified: Wed, 05 Aug 2026 02:23:31 GMT  
		Size: 8.7 MB (8703162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5542d3f851bb822aa84cfa30fbb37dbd87ceca333fa9baf25ffaa9770f94683`  
		Last Modified: Wed, 05 Aug 2026 02:23:31 GMT  
		Size: 18.0 KB (18015 bytes)  
		MIME: application/vnd.in-toto+json
