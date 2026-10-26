## `openjdk:28-ea-slim`

```console
$ docker pull openjdk@sha256:c5997e67c8c6723c985a09d7a58dddd84f67c4c1410152f08fe2f3c4491fdf44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:f504009ddc88fca727a58e1526fb28345167e492caf7f6dbafdc9d9bfe381c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275549176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de98508ac90a5b180f845a56ee257f8218264c967ba11f9e17a9cc838a6c7c32`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 17:18:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 17:18:42 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 26 Oct 2026 17:18:42 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:18:42 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:18:42 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:18:42 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:18:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78a9df1513af676a5b65b3854a20d7c1883b75074d0a825f0ce3de3522c6602`  
		Last Modified: Mon, 26 Oct 2026 17:19:04 GMT  
		Size: 2.4 MB (2368507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a82532b62cabfa8f44467b46541aadae11472da64e9bb8322d4176c91eafc47`  
		Last Modified: Mon, 26 Oct 2026 17:19:10 GMT  
		Size: 243.3 MB (243337090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:02dece6d152dc7190dd00c030336cd7cb35d2f41a1975ca267c1cf22ec66bb45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339bdc3b3798f4b3e1a31b2247abc30c85a3088201fac85b9b7babcf8b94c534`

```dockerfile
```

-	Layers:
	-	`sha256:11d4b5f2064e2ca126f6e8ad0fca8896bfb94dd488583d78a60c9d93f0e9681f`  
		Last Modified: Mon, 26 Oct 2026 17:19:04 GMT  
		Size: 2.3 MB (2284281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b3c751ac076610c7b102fef2d30030dddbe4c591f9c50deebd4942ba594b4d9`  
		Last Modified: Mon, 26 Oct 2026 17:19:04 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:fb812226940aba050c83f4f0505ac8a8762a5f6166fbad14e13511ea49e5e4b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273857471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd452a9725270ab6b211bb97e7b5d38fdf4699b6eb7a104d02618ce214e41bbc`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 17:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 17:18:34 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 26 Oct 2026 17:18:34 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 17:18:34 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 17:18:34 GMT
ENV JAVA_VERSION=28-ea+21
# Mon, 26 Oct 2026 17:18:34 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 26 Oct 2026 17:18:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0c1b096afd9378859034c7e3ca736caefebdb05d14228a9d19e92a2b0320f5`  
		Last Modified: Mon, 26 Oct 2026 17:18:58 GMT  
		Size: 2.3 MB (2311810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e1b52ae4fc532b723f79c3fdc8198390a7b54bfede2d778f112cd04ac2940a`  
		Last Modified: Mon, 26 Oct 2026 17:19:02 GMT  
		Size: 241.3 MB (241345183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:cc9ecb3a135df53d77b2a30c139ac6637bebdac9459b0de9e680205605038ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2302234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18a719d9fb82843e0555c434b0ad0550b20a5fd285e1b1809451e6cb9061c95`

```dockerfile
```

-	Layers:
	-	`sha256:62d90ead369526e13f53cc222632e8208e0f010cf5a1f1da29f38209ed8a1f69`  
		Last Modified: Mon, 26 Oct 2026 17:18:58 GMT  
		Size: 2.3 MB (2283959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85682665a601a8145fce9cc2e864d1711e99c96e3a7edca7f093632f8fc31ab1`  
		Last Modified: Mon, 26 Oct 2026 17:18:58 GMT  
		Size: 18.3 KB (18275 bytes)  
		MIME: application/vnd.in-toto+json
