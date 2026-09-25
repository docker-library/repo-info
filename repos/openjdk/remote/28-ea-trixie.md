## `openjdk:28-ea-trixie`

```console
$ docker pull openjdk@sha256:b79a7e3d5bd267aebbc68f45293d6e37f22892e58b8c631bb9353626de457ec5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-trixie` - linux; amd64

```console
$ docker pull openjdk@sha256:f02af6748782f98e203dea96f77b6d605747dc0e13d7985245b4286fbe0d5051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.8 MB (401829806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f328086e6fa67e9b55bd42d25f25b4f5a323f441ccdd07800d8c726e3b7d06e4`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 18:05:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 18:05:20 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 25 Sep 2026 18:05:20 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:20 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:20 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:20 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c12b6b34bc6356f3c35b201d115040678de0db51f5200b3e84471d038e74fbc`  
		Last Modified: Fri, 25 Sep 2026 18:05:46 GMT  
		Size: 16.1 MB (16067447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5531858e03f698009cda927d6e3d2b5f24d633ced470d6f546d79a88844761d1`  
		Last Modified: Fri, 25 Sep 2026 18:05:51 GMT  
		Size: 242.9 MB (242935100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:af291b9db06bbf6ce9c2dd8fc1c0b8301e40d4fa4d61b263944f02bc8722013d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8539301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb456cbb3fceac97a3fd34fb7a3c9b73b9115969fa794459b622e7954e2a4ec`

```dockerfile
```

-	Layers:
	-	`sha256:47bbbefe93cfabe29b885f8b7b17f0576f1ba35448316dbfaaed30e9fdd4e9b1`  
		Last Modified: Fri, 25 Sep 2026 18:05:46 GMT  
		Size: 8.5 MB (8521388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00a01714740d08a9c231580115b69b8109d68a4a8fba781e67f54dc8c4b1a23a`  
		Last Modified: Fri, 25 Sep 2026 18:05:45 GMT  
		Size: 17.9 KB (17913 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-trixie` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:eee91bb60a1fd81d52c847edb8ce6337fcb5a46487a645178a292ce107eb567e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.5 MB (399470227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f843a3e4bffa711528fd69a5efc3e0e01d85273f37e359d45891c1b9f65958`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 18:05:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				binutils 				fontconfig libfreetype6 				ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 25 Sep 2026 18:05:17 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:17 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:17 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d647c11352e84d7de3d3a935e60a97ec8a309dfe37fdfa0624edd6a1883effca`  
		Last Modified: Fri, 25 Sep 2026 18:05:45 GMT  
		Size: 16.1 MB (16071311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97995a02f56a357cea6f70e0ad606d8b1acf2007f537dde76f9d8262622564ea`  
		Last Modified: Fri, 25 Sep 2026 18:05:51 GMT  
		Size: 241.0 MB (240988860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-trixie` - unknown; unknown

```console
$ docker pull openjdk@sha256:4c6b448b1dfe693c34a2d167b0f8b724caf5895f2c966e934f1a47ae2bececc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ba539416952781ae8725b2dc7cb08a4315f8ad4b1902f1c308ea502f6f9108`

```dockerfile
```

-	Layers:
	-	`sha256:dd50cd62a3146877787250556817c7dff55e13384d8ffc2c5f5d5534d1c4b17e`  
		Last Modified: Fri, 25 Sep 2026 18:05:45 GMT  
		Size: 8.7 MB (8715541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8aab945e87ed325a4d94ea604a89e4c9720266835050582a2d89289c01cbfa23`  
		Last Modified: Fri, 25 Sep 2026 18:05:44 GMT  
		Size: 18.0 KB (18032 bytes)  
		MIME: application/vnd.in-toto+json
