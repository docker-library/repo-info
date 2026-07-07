## `openjdk:28-ea-5-slim-bookworm`

```console
$ docker pull openjdk@sha256:4432c6f6eb852fbfb647043493a9c895131df51c66765983c4946a552f83c117
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-5-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:8f94aa190250f4604ea6a1b030297a5acc7e429dcc73a9ae5511927e34e56c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259864078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f787f3dd1f4f90aaa14acd80cc5c0338b3de674b3ecb9759a923cc5564c4b535`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:40:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:15 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 06 Jul 2026 21:40:15 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:15 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:15 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:15 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1560bc276a5457c185a1f85e5c4b953996976b817730e6736e4ad4fda2f8f3f5`  
		Last Modified: Mon, 06 Jul 2026 21:40:33 GMT  
		Size: 4.0 MB (4032951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a0e93d221aae765567178039d36b407b111a9096b4e1e808b2e15d7aafb2b3`  
		Last Modified: Mon, 06 Jul 2026 21:40:38 GMT  
		Size: 227.6 MB (227593488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:8e1b178c5e25745c67e394b110367e2059f9c68639d766f0d380ecb672280916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473159af761861adee25edd928f557cac433691c2086802f76dcb08b04b38cee`

```dockerfile
```

-	Layers:
	-	`sha256:a56be8208084fb12b6662282320665ce722a8feb1f0f61298eb28deebc9daa40`  
		Last Modified: Mon, 06 Jul 2026 21:40:33 GMT  
		Size: 2.6 MB (2647282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59982b5e575517ef298858d7371fde270c3158b30fb37eb2bd1463daf4e618fd`  
		Last Modified: Mon, 06 Jul 2026 21:40:33 GMT  
		Size: 16.9 KB (16858 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-5-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:e0b0dddd2c9878266d2938b351124e51024cad5f678db3de931e12cebfa77808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257619489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89d40acd22b1362457094d32585fd05d7177112f811641c2750528e1be6ee46`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:40:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:40:18 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 06 Jul 2026 21:40:18 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:40:18 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:40:18 GMT
ENV JAVA_VERSION=28-ea+5
# Mon, 06 Jul 2026 21:40:18 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 06 Jul 2026 21:40:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047191677190bc6e9176e93fe7c761caac94f66fb5f5ec9edcf392756914127e`  
		Last Modified: Mon, 06 Jul 2026 21:40:39 GMT  
		Size: 3.9 MB (3852867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f33782287df23b5b97cd263cb44d0ab8d81a9c928b4d0fbdaaacf85a51afa44f`  
		Last Modified: Mon, 06 Jul 2026 21:40:44 GMT  
		Size: 225.6 MB (225644204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-5-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:789e0a3206ece834e8a6c2890ae765b80f37cfea75b311cdf7404f443fc86cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e90e1b1ccb627be2925b418e5d5d2db1c45b02c412368889d23ca2d83d1d49a`

```dockerfile
```

-	Layers:
	-	`sha256:80a4922d7e995df2611266fe14f73c29e24a68ac4f9eee3060c2a01e9e22324d`  
		Last Modified: Mon, 06 Jul 2026 21:40:39 GMT  
		Size: 2.6 MB (2646916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95f0a045b253055a7e19b90db611cb08672cd9405d9d12bfae0822852953e8b8`  
		Last Modified: Mon, 06 Jul 2026 21:40:39 GMT  
		Size: 17.0 KB (16976 bytes)  
		MIME: application/vnd.in-toto+json
