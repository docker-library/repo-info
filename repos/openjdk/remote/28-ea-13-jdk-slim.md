## `openjdk:28-ea-13-jdk-slim`

```console
$ docker pull openjdk@sha256:e8193ecb1e52bb08242b71666794e732c9062f637725a2cbb67249644fb2f1ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-13-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:25d3ab12ac0f018464b557a49149ead006bfbb44f87780f3ba58cd68bf7baf00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277817634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b53d828743e86241d75d9e0f486b70b4477274353d36a21d1b85351856e5073`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 19:27:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:28:06 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 31 Aug 2026 19:28:06 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:28:06 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:28:06 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:28:06 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:28:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568b83be86f118587d9c288a906466325c4cfe764c579c2090f74e48e79a7de6`  
		Last Modified: Mon, 31 Aug 2026 19:28:27 GMT  
		Size: 5.3 MB (5337543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7552056af48fae97a1292273d519f1c167bf2715030983e7e6483507e2cf91f2`  
		Last Modified: Mon, 31 Aug 2026 19:28:32 GMT  
		Size: 242.7 MB (242687433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-13-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:dead336e2e70a254ade33833102c783fc40483c46fdd484165a6e1b46f244ad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d15030606a2d78371d257c5ee72ca38a231fb523d17857714cd36c56933d37`

```dockerfile
```

-	Layers:
	-	`sha256:f1da789dcb485bbc73ab25f453a833e56dd8ba8e2a43faa4ab0f0bc6eacd47d1`  
		Last Modified: Mon, 31 Aug 2026 19:28:27 GMT  
		Size: 2.3 MB (2279210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cafc7fa145d2e3d3dd91d9ba0411f8317ed34687f310596821b2460c1f9622fa`  
		Last Modified: Mon, 31 Aug 2026 19:28:26 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-13-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:9c57e155afe6c08b649f8ce949c952df0ec5dfdb1247c32fbe37733adbe874ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276579241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eced621fd033b6d3de9f4fa9e534210af5d093970ac9f6360ad1d14f2e2052f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 19:45:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:45:23 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Mon, 31 Aug 2026 19:45:23 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:45:23 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:45:23 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:45:23 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:45:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d675edb345ad4fc0f167e1d2d4271efb5058d4247dd243d82b800daf82a5b3a6`  
		Last Modified: Mon, 31 Aug 2026 19:45:46 GMT  
		Size: 5.6 MB (5647681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fedbe3cc779d777c867701b102a345f16e636e77defd9e47265fa4ee433945e`  
		Last Modified: Mon, 31 Aug 2026 19:45:50 GMT  
		Size: 240.8 MB (240771978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-13-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:074279cf1619b90546435a35033aa110ced8fd24de7139318afc2266fc4b6b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:775a7e6f2d15ad282464f4aa79f9693d60c4c68f5bc7f17072971af5b662d009`

```dockerfile
```

-	Layers:
	-	`sha256:2ce42b82abbc48ecb3bacc990a84d437d54b475bc126d3949d92b962f5d6782e`  
		Last Modified: Mon, 31 Aug 2026 19:45:46 GMT  
		Size: 2.3 MB (2278888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c729a6139d73b6abd0df5526c50ffee6bb0cec81261c34783c0e7a525d9d5144`  
		Last Modified: Mon, 31 Aug 2026 19:45:45 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
