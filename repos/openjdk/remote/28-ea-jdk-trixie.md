## `openjdk:28-ea-jdk-trixie`

```console
$ docker pull openjdk@sha256:46ed65e84041d7381490926cc0da26cc240949c97e0f131fa5b41914a26a3eb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:21c5fe5e0410fc4240c0ed7a7b271c1b2364119d445354e82862d8a61fdd73e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.6 MB (403589467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd63b99fed5d5d0d78a0f9e602be51ba85cf4d656677253e9f427108edb8edb4`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 00:07:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:46 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:07:46 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:46 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:46 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:46 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936369c2401be4aa316199099bea1169a6711c185a0317cb963f0c1bb6c08c5f`  
		Last Modified: Tue, 24 Nov 2026 00:08:14 GMT  
		Size: 16.1 MB (16069041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769df46723bd714165de7ffeb3e02d70ee11641c06b58e5375814a76e7c8dfe5`  
		Last Modified: Tue, 24 Nov 2026 00:08:19 GMT  
		Size: 244.7 MB (244654834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:7d72aa9630f679150a44f130b2c407b62c432fb43335c5b02f9aa44364805c7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8537248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb591e69da29c368a306531c65d297b2dd275b661a3655c312afdd3005bd100`

```dockerfile
```

-	Layers:
	-	`sha256:afb47c6ae767c8ab2f9acd9d7b3c13a0b77cfe44ce8097403d49ba7752630ee9`  
		Last Modified: Tue, 24 Nov 2026 00:08:14 GMT  
		Size: 8.5 MB (8519335 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6452a92fb5a300db455414c01c8c0028e5c19bc86dd3a85e8d9de1cc505f35d3`  
		Last Modified: Tue, 24 Nov 2026 00:08:13 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:4f62050bcaf84068f06b8c5f476661d31d015198cd67e7cb656d3d860a9d37c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.2 MB (401185621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d47f682147b9640cd7c0d83ee97bd5b9500b460903680013c90a7cbd452155`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 00:07:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 00:07:55 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 24 Nov 2026 00:07:55 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:07:55 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:07:55 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:07:55 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:07:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568b79bc9c227cc6b0e3368617049481178a0b8b09a6bb34b2a6792d080e28f8`  
		Last Modified: Tue, 24 Nov 2026 00:08:24 GMT  
		Size: 16.1 MB (16071271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ece80c42c017c95299ec570aa812a34542bdfd058ebc196368d9c48eac73a6`  
		Last Modified: Tue, 24 Nov 2026 00:08:29 GMT  
		Size: 242.7 MB (242664460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:1fdbc5582b76e4955ab6d7d027ed228c704172607aa23326fda1125fa842424f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8731520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3b023c51495e1ebdf52683498ed92dc78c994da4ebbc15926a57b5fbaeb0c5`

```dockerfile
```

-	Layers:
	-	`sha256:8ced2efa0ab1d4872094c5319cb98f661092c344d3fb962d757c048355991bea`  
		Last Modified: Tue, 24 Nov 2026 00:08:23 GMT  
		Size: 8.7 MB (8713488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c894bb71f187bd2c243f58891797fd941d6e094113093ca78509d560651b70`  
		Last Modified: Tue, 24 Nov 2026 00:08:23 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
