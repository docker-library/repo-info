## `openjdk:28-ea-15-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:f890a29509a8337e62894f64518878594d9998454034b18d20a6310bc32ad04b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-15-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:557438b0c82bbe220913b0633eb93fbe348fed7129f4d8339d3af3716622497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.2 MB (275192198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc61c486d8fca8f676666061dd3f0504a17cf8416b35e2506b27caf903d99bf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 15 Sep 2026 21:38:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:38:23 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:38:23 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:38:23 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:38:23 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:38:23 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:38:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432fd9e6c2dbdef10f506f3da5d23faa08b9d301fd8bdc8b16d17b22e2e94491`  
		Last Modified: Tue, 15 Sep 2026 21:38:43 GMT  
		Size: 4.0 MB (4046362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0a4f80ae9a1b4fa50a89301eafd9787d2b74ac969eb1591e5a1de7a732a78c`  
		Last Modified: Tue, 15 Sep 2026 21:38:48 GMT  
		Size: 242.9 MB (242913181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:584e7b91f308c5b6228a648cbab99af7b8c6a50207069f9ba6584e57063cc791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592be15ef9d182a4027fb772b38464de95972ff119381299ce8dc64d83dafcdf`

```dockerfile
```

-	Layers:
	-	`sha256:b49567371a0ed7428de731f2b92121cfd334a153cb186a7ba83730886d79f0bb`  
		Last Modified: Tue, 15 Sep 2026 21:38:43 GMT  
		Size: 2.7 MB (2655741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae5df380c9a13d3f35bd3c244693cd0896910b9a412a4339bf93ba3438b8a712`  
		Last Modified: Tue, 15 Sep 2026 21:38:43 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-15-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:2384d5f3fee742f2bec13d08ce6866510f33a77d0dc34a6aa8bc036e73e8a1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (272954958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915604edd59f01a80e561d4e9ffda7655fa35b2214c61dfbbf9edd018b123f85`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 15 Sep 2026 21:44:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 21:44:25 GMT
ENV JAVA_HOME=/usr/local/openjdk-28
# Tue, 15 Sep 2026 21:44:25 GMT
ENV PATH=/usr/local/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 21:44:25 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 21:44:25 GMT
ENV JAVA_VERSION=28-ea+15
# Tue, 15 Sep 2026 21:44:25 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-x64_bin.tar.gz'; 			downloadSha256='621528ea2be9bcfc995c350d7db6dc6270a212de980dc31e5c1626612bad469d'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/15/GPL/openjdk-28-ea+15_linux-aarch64_bin.tar.gz'; 			downloadSha256='09d100ebcc0a205f809834f79b0bdf5637cc52d2c5ec3ab30a88edba093b2b5f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 15 Sep 2026 21:44:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151f818bf84c7b293ed37a19e524cd5a2774545b1b2fa46af8249a82b7c082de`  
		Last Modified: Tue, 15 Sep 2026 21:44:49 GMT  
		Size: 3.9 MB (3861330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2c88c8c4493cbce0e8115f262a242a5000565288e49b05881342fb03023f63`  
		Last Modified: Tue, 15 Sep 2026 21:44:54 GMT  
		Size: 241.0 MB (240976339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-15-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:471b6cf2970247da9e53ae9c9e771259b2774bf75aa1666eea5204a167172745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2672365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df616f46090227a449db50e5e449b564847cc4c91566006fef50c2f1beb2ca0`

```dockerfile
```

-	Layers:
	-	`sha256:39f84d8c575371ae38e804c9f0e4a0d6302eb08d33329309e799e8231cfd4b92`  
		Last Modified: Tue, 15 Sep 2026 21:44:49 GMT  
		Size: 2.7 MB (2655375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dc4ee3da198e9367e416b53d001e8ad824891da6bd3bc5dbdf87f0f634e5a5e`  
		Last Modified: Tue, 15 Sep 2026 21:44:49 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
