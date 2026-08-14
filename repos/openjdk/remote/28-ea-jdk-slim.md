## `openjdk:28-ea-jdk-slim`

```console
$ docker pull openjdk@sha256:3c13cc0802cbfd1bcfbe472f575042e896be5bee58e93c1cf1a416942a1a51f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:81756d33a2c15004cc151178e85ee0920be4d6d10ec44d7e3c2026974dbe4d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274840269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ded65b3d35e78ecfac0c0e0c1c037c4d901d5a228714a3276bacfac78fdab7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 14 Aug 2026 17:58:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:58:50 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:58:50 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:58:50 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:58:50 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:58:50 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:58:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8420443786dd1ab420e15830204204505faadf3da705fb78f533a5307a4110a2`  
		Last Modified: Fri, 14 Aug 2026 17:59:13 GMT  
		Size: 2.4 MB (2371314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e0c5d352bf62dd64aa4f436f754f43b27f1a26ed979e4ec9f23aaf4796c820`  
		Last Modified: Fri, 14 Aug 2026 17:59:18 GMT  
		Size: 242.7 MB (242688190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:c553717e737a70ee5df0f83877d06eb69b0ef2eb86f3ca8a51f735b7d8347dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2297120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a500d3979284863aacd6d8bb763600467689330c3971b910faad6cac366250`

```dockerfile
```

-	Layers:
	-	`sha256:663eea9f499cd13afebab7cdb0808101ee2dbc8bf28e137559493be0ec866553`  
		Last Modified: Fri, 14 Aug 2026 17:59:13 GMT  
		Size: 2.3 MB (2279012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee3a3bab1806b9a1a3e771c5cb5037683907fccaf0d5e3f85f8b3317fb3a404d`  
		Last Modified: Fri, 14 Aug 2026 17:59:13 GMT  
		Size: 18.1 KB (18108 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:3ac6f7bf754a9252cb9d96f79a13af21eb1d999923dff08e9fe62e61120d00af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273235673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb82142e16aeb939ef5385c524c40503b7126bd647b9d84b8f8405c37fed80e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 14 Aug 2026 17:58:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 14 Aug 2026 17:59:12 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Fri, 14 Aug 2026 17:59:12 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Aug 2026 17:59:12 GMT
ENV LANG=C.UTF-8
# Fri, 14 Aug 2026 17:59:12 GMT
ENV JAVA_VERSION=28-ea+11
# Fri, 14 Aug 2026 17:59:12 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-x64_bin.tar.gz'; 			downloadSha256='ddbba46b041f4521d6b6e2dbda30782b7c9bc0b6a9fb28566265c717248bbf21'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/11/GPL/openjdk-28-ea+11_linux-aarch64_bin.tar.gz'; 			downloadSha256='02b6245ca3f84a61f3ffa6555e3ea93a6480f643e673d8f6903a6567a39efab0'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 14 Aug 2026 17:59:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cf9edc0279e1e6f8521a5a99d933b0fa10c134bf3695419ceb9d28a06ee334`  
		Last Modified: Fri, 14 Aug 2026 17:59:35 GMT  
		Size: 2.3 MB (2314620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1372a1bff78ce5fdd82f7e9c06b6da2e57a8b27c89c1ba133661c5b1a174d6`  
		Last Modified: Fri, 14 Aug 2026 17:59:40 GMT  
		Size: 240.8 MB (240777444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:f3b477c87f9af4588b1a906af9949f0051e92e4ca29d8df92377f48159c0fa7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2296966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9c27489d9a4bf42a9b47c2f56a521c44c70b466e9ca0cd8bb1a63c82c6fd4d`

```dockerfile
```

-	Layers:
	-	`sha256:2fa4091134a1bc3c2f56a3edee239186f8151e890faafd9c72dec104466661df`  
		Last Modified: Fri, 14 Aug 2026 17:59:35 GMT  
		Size: 2.3 MB (2278690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7318cefcc6fa1fc6461d802c2b4f529b9c9f3355e2945254a2bf34ce9563849`  
		Last Modified: Fri, 14 Aug 2026 17:59:35 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
