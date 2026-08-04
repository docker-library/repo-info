## `openjdk:27-ea-33-jdk-slim`

```console
$ docker pull openjdk@sha256:bd570e7acbd9c29b0f487a96fa64abce8afc612b83c52a0773e9059cbc72b8da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-33-jdk-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:9a592a99c2ca88406e8e2c8f81cb0be48b05dd0f410ce317d5c7242a0dbe525b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259342759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96eb7c9ccf5e06381633e1aedd1f5e1710b626a15c642ffef9189bcc61d5c2ec`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 00:58:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:59:01 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 04 Aug 2026 00:59:01 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:01 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:01 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 00:59:01 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40e9b1dc2135993d1c56d673ad29d8abb810218217566abd3b432a3643eeab6`  
		Last Modified: Tue, 04 Aug 2026 00:59:21 GMT  
		Size: 2.4 MB (2371304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ec66f6956573fc337f5c82a5def7164d16f9941ff0f592e9fd4fad45781c62`  
		Last Modified: Tue, 04 Aug 2026 00:59:25 GMT  
		Size: 227.2 MB (227190550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:c85d4d75aeddb18e26bd009de46fa05956c81347ef17b7b9069a1fa11f3fa4ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c645b330a0389429a6af273b7250ab56c0b6f67783707363c63597e21a98ded3`

```dockerfile
```

-	Layers:
	-	`sha256:bee6055e327aab4f6bdf0cdc46fa811b68ac063c201a251c550beb10d9234cac`  
		Last Modified: Tue, 04 Aug 2026 00:59:21 GMT  
		Size: 2.3 MB (2276438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45f92787f247576361b716bfde833f9b6da4493ebcf1234e3feb6d134d0e58fb`  
		Last Modified: Tue, 04 Aug 2026 00:59:21 GMT  
		Size: 18.1 KB (18109 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-33-jdk-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f2a88daf46e0f2612bd7cd861fbb66f69f6fbc132c1980368f845eadfcf03010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257621375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb3c498a366a08489957cb74a23e88b715a58f57cc3f137ee063ea665b3150b`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 00:58:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 00:58:49 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Tue, 04 Aug 2026 00:58:49 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:58:49 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:49 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 00:58:49 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:58:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff95b0ea2a6f82806cf932a9f2b81ea2387a24b25a7bb1ffb02f6a46a1a579f`  
		Last Modified: Tue, 04 Aug 2026 00:59:10 GMT  
		Size: 2.3 MB (2314658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1088fd471cf08deee5559f0eef5575208e93c79196b0467db1146c78b6e59c`  
		Last Modified: Tue, 04 Aug 2026 00:59:14 GMT  
		Size: 225.2 MB (225163012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-jdk-slim` - unknown; unknown

```console
$ docker pull openjdk@sha256:29bfe0a3317963162743cad4aa7191f87dd6c9c1dad9075e3e78612490b37cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2294392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5c69b225aefddd9de2f8abfef54b0a73844aee5cf50d3df5afd5d9f2a9347b`

```dockerfile
```

-	Layers:
	-	`sha256:8da25c043f2c17c37422d55ae8320381e3057525e8afea0271cee4d01c6a46f3`  
		Last Modified: Tue, 04 Aug 2026 00:59:10 GMT  
		Size: 2.3 MB (2276116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ca547c317797787cd3ffbb124de7312558d435f8d065548d1b24e8ba58c867e`  
		Last Modified: Tue, 04 Aug 2026 00:59:10 GMT  
		Size: 18.3 KB (18276 bytes)  
		MIME: application/vnd.in-toto+json
