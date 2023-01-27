## `openjdk:21-jdk-slim-bullseye`

```console
$ docker pull openjdk@sha256:f7666daaa82484d2fcecb1de3626656e826cdefcd9cf780be7736bba30b2d96b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `openjdk:21-jdk-slim-bullseye` - linux; amd64

```console
$ docker pull openjdk@sha256:22f4df0e3642f65bd527ed7aa092d5f08dded5b369f5072d11314accb3874178
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232478450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c16e4d711c29756e84943b0e12e76519abc4392917e6b1fbd050fb50cd41577`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:34:44 GMT
ADD file:e2398d0bf516084b2b37ba1bb76b86d56e66999831df692461679fbd6a5d8eb6 in / 
# Wed, 11 Jan 2023 02:34:44 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 07:04:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 07:04:10 GMT
ENV JAVA_HOME=/usr/local/openjdk-21
# Wed, 11 Jan 2023 07:04:10 GMT
ENV PATH=/usr/local/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 07:04:10 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 22:20:50 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 22:21:04 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 22:21:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8740c948ffd4c816ea7ca963f99ca52f4788baa23f228da9581a9ea2edd3fcd7`  
		Last Modified: Wed, 11 Jan 2023 02:39:07 GMT  
		Size: 31.4 MB (31396972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec49d0093a3b27f87b047abc2b89aef94d6db65ce71e6660520e4b01f9ceae25`  
		Last Modified: Wed, 11 Jan 2023 07:11:03 GMT  
		Size: 1.6 MB (1582290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee80c771d973c90516fa851133671391e0eff28ae20c00ec9fefd2018ca0384`  
		Last Modified: Fri, 20 Jan 2023 22:28:18 GMT  
		Size: 199.5 MB (199499188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:21-jdk-slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:4c853d04aedf7dc4ada76449f5ed4157b049be3d9e59f5d589b4f1965c54e09a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229581540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a35a0bf06c9e461585b783d13447619896e173b0c041d6e6200eaa109ee220`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 11 Jan 2023 02:57:34 GMT
ADD file:92cf2c9ffaaea1a6bc1baa7b681303b1029dfd6ddbfef1792be8b21aaf09235c in / 
# Wed, 11 Jan 2023 02:57:35 GMT
CMD ["bash"]
# Wed, 11 Jan 2023 13:32:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Jan 2023 13:32:36 GMT
ENV JAVA_HOME=/usr/local/openjdk-21
# Wed, 11 Jan 2023 13:32:36 GMT
ENV PATH=/usr/local/openjdk-21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jan 2023 13:32:36 GMT
ENV LANG=C.UTF-8
# Fri, 20 Jan 2023 21:40:43 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 21:40:57 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-x64_bin.tar.gz'; 			downloadSha256='42cc4d00436ce57168aeb9c1e19e1f52f3338be6a53943b2bbbfa645fd0c7bff'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_linux-aarch64_bin.tar.gz'; 			downloadSha256='3ecc95318c2a450012f0415ccd8c0de1bae00e0228f7fed7dade040638814c34'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version
# Fri, 20 Jan 2023 21:40:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:934ce60d1040c5d4922bae5879321a398777457b7514de02ef69ece49e6aa907`  
		Last Modified: Wed, 11 Jan 2023 03:01:19 GMT  
		Size: 30.0 MB (30044814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952b21a8c620d2674eb6bd797758f3f454dc67048f31040dae03e31ad11d9bab`  
		Last Modified: Wed, 11 Jan 2023 13:39:26 GMT  
		Size: 1.6 MB (1566309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5499f8b409d21352e90ce6ab9965f57630f37785f7e4c09c80de829426105d`  
		Last Modified: Fri, 20 Jan 2023 21:48:17 GMT  
		Size: 198.0 MB (197970417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
