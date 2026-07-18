## `openjdk:27-ea-31-jdk-slim-bookworm`

```console
$ docker pull openjdk@sha256:96082f09cd899a3611ecde836a961d30e0a7eca315fc236fb0f213eede97441f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-31-jdk-slim-bookworm` - linux; amd64

```console
$ docker pull openjdk@sha256:84e9364071333fd59f796d1fcbbb296d609b93c47dbb1a3ee18d86c0055a5cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.4 MB (259425512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ecb59c87f874137d1f25c30b1f1a76de9b599d152f9d97d89ca078be55f1b3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Fri, 17 Jul 2026 21:58:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:59:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 17 Jul 2026 21:59:07 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:59:07 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:59:07 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:59:07 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:59:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908178f55d19774788b7eaaa8ac452bd538805a8431019c3e214ce8e5a3d2ec0`  
		Last Modified: Fri, 17 Jul 2026 21:59:28 GMT  
		Size: 4.0 MB (4032906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a74aa5999049b4ced4d855e45bf34c6c890f18033ffec96c39d6a054b264d1`  
		Last Modified: Fri, 17 Jul 2026 21:59:32 GMT  
		Size: 227.2 MB (227159963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:25152de9f49b3705960da88f04259053b109881fc22d16b585a14356b843601c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2664197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14d1955969ab93a2fb631b300200eb936eb8c7c2ce2773444e2769c53a93995`

```dockerfile
```

-	Layers:
	-	`sha256:1452f67a1da60ec1ec78bf8e70171b9e8e2c7d883396f5651446215123557e05`  
		Last Modified: Fri, 17 Jul 2026 21:59:28 GMT  
		Size: 2.6 MB (2647326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d23b39c78800c469306d001e3c09f1537d58727fe00fa9196b84a70c3b91dd8`  
		Last Modified: Fri, 17 Jul 2026 21:59:27 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-31-jdk-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:a8d3504bb689bd58ff3adf6f2128eec1125fa4bff43b6e2d402a8d408b7a36ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257121780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:378fbbb9c55034a23f3cea27aab666735d30769883b239ab966c7b3935f3acfe`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Fri, 17 Jul 2026 21:58:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 21:58:57 GMT
ENV JAVA_HOME=/usr/local/openjdk-27
# Fri, 17 Jul 2026 21:58:57 GMT
ENV PATH=/usr/local/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Jul 2026 21:58:57 GMT
ENV LANG=C.UTF-8
# Fri, 17 Jul 2026 21:58:57 GMT
ENV JAVA_VERSION=27-ea+31
# Fri, 17 Jul 2026 21:58:57 GMT
RUN set -eux; 		arch="$(dpkg --print-architecture)"; 	case "$arch" in 		'amd64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-x64_bin.tar.gz'; 			downloadSha256='89feaf469240210bf43be7dc4b5d199c2d36f3731fc9ea42ab91bf53011fd059'; 			;; 		'arm64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/31/GPL/openjdk-27-ea+31_linux-aarch64_bin.tar.gz'; 			downloadSha256='131edcb134a56d07598455cb0347eaf03b789d6b63ddc9d9573d4d58c99f617f'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget --progress=dot:giga -O openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$JAVA_HOME/lib/security/cacerts"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 17 Jul 2026 21:58:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dc6ef27116eb8f97a446e943ea244c7487e25ac420c592b8d14f7a28757d0c`  
		Last Modified: Fri, 17 Jul 2026 21:59:18 GMT  
		Size: 3.9 MB (3852857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2b44b28112fe97bea09b4701c7773b04a11d665d5a6478eba9c380af2b21b3`  
		Last Modified: Fri, 17 Jul 2026 21:59:22 GMT  
		Size: 225.2 MB (225151668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-31-jdk-slim-bookworm` - unknown; unknown

```console
$ docker pull openjdk@sha256:ad42636fcc2e72899134fe7af6f957896ca9a459e0806ff2cd6aa194c0aabad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2663950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6df6232772c98833cc98e242ede9e96fdac6452f38831d6980bf588d0503ea`

```dockerfile
```

-	Layers:
	-	`sha256:4a8ad26aeb1a6ba3154613056241bb6e1915257b9bf5a444bac340a38bf14a41`  
		Last Modified: Fri, 17 Jul 2026 21:59:18 GMT  
		Size: 2.6 MB (2646960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa151b5b35b59621ca75996844f967eaedc6a0afbb434ba824b67648f913e5a`  
		Last Modified: Fri, 17 Jul 2026 21:59:18 GMT  
		Size: 17.0 KB (16990 bytes)  
		MIME: application/vnd.in-toto+json
