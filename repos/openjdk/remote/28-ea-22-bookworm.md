## `openjdk:28-ea-22-bookworm`

```console
$ docker pull openjdk@sha256:5ff3097293a809f09629723479d337d2ac431735ee2e464751b8da1825bca0d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-22-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:032d62ec91442666aa5850c9f2b137e2b0640c6704a9851c3d232cfdbb693f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.1 MB (397131072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cc2ef3502615584f355b24050f233b819a3f4d5abf0a2a3f20bbbd4768062e`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 08:54:41 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:54:41 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:54:41 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 08:54:41 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 08:54:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cefad1238f0d8141adf3a17b2ed7ffa4d710a795ff9c6b1de7785049f3a965b`  
		Last Modified: Thu, 05 Nov 2026 08:55:09 GMT  
		Size: 16.9 MB (16949977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd634173d7670a35d7ff842cef7c3887e125d757241e55e1d9e412de1eb1b1f`  
		Last Modified: Thu, 05 Nov 2026 08:55:13 GMT  
		Size: 243.3 MB (243348774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:5025e35035d94974ba86b08f6ade17264be9651c898f4cb9f4702e88b931634f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8690061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9142667eba9c8c6f1ec7437443670d7b3307890fb9fa6e9310107ed7c395a53`

```dockerfile
```

-	Layers:
	-	`sha256:fc37d878d9be21b4d6b63870394a3f29333c31f312051f361f0f4ebefc315f75`  
		Last Modified: Thu, 05 Nov 2026 08:55:09 GMT  
		Size: 8.7 MB (8672123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ce2f3fbae5f967093dd1112a8df6ed9efcfa0bf0689abaab6a8576adc10b3d`  
		Last Modified: Thu, 05 Nov 2026 08:55:08 GMT  
		Size: 17.9 KB (17938 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-22-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:3be5e648ab678711497649d2d640b6174ccd8e78d222f30cac41a7a3ca7edf6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.5 MB (395493849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dc23cfc1e66d9668343dda73b91ab3f2ad45afa1c01f8b11f0bc6df59a8dfd`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:55:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:55:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Thu, 05 Nov 2026 08:55:17 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:55:17 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:55:17 GMT
ENV JAVA_VERSION=28-ea+22
# Thu, 05 Nov 2026 08:55:17 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-x64_bin.tar.gz'; 			downloadSha256='4c7d823e1791aa6c60d66892c92d87646c6676b36820bad85d73ec70f1719ead'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/22/GPL/openjdk-28-ea+22_linux-aarch64_bin.tar.gz'; 			downloadSha256='b0f41a5dfbbd3532111160b0dae98619c194316d8de734c194c10aa3af0fd04f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 05 Nov 2026 08:55:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea975aa97d4173c1c2201f11bd6d560b4b00ca0218fc02bfa0b30771220ea258`  
		Last Modified: Thu, 05 Nov 2026 08:55:46 GMT  
		Size: 17.7 MB (17734252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8449b59e8392091f9c34441064c9facfd7bb03e9b531ef362f34cb822a6f9c`  
		Last Modified: Thu, 05 Nov 2026 08:55:50 GMT  
		Size: 241.4 MB (241378020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-22-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:d4d4d3edf63187b95fb1cd7ba8cd0d663f10a910a954110daf051bd8df09b59c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8827026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c469edb7d8c55842a4d428974a2e2324951a670a199b245ad53620de313ada`

```dockerfile
```

-	Layers:
	-	`sha256:fc3060c00074bb28e5a8d7b28d3d7d2948a935934c06c070634cebd56cb79c89`  
		Last Modified: Thu, 05 Nov 2026 08:55:45 GMT  
		Size: 8.8 MB (8808968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5614ca9a9aebab526ca85e19a6e9b347a02aa5ac3d490a5b271a1fca674d0ad1`  
		Last Modified: Thu, 05 Nov 2026 08:55:44 GMT  
		Size: 18.1 KB (18058 bytes)  
		MIME: application/vnd.in-toto+json
