## `openjdk:28-ea-13-oraclelinux9`

```console
$ docker pull openjdk@sha256:dcd7b13e47ee763f41f1531a3b73d257e215a3080bfa40e7188d6d208df6fdef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-13-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:d82d11f5ebd8ba09974c07f1779b4fab750a2c6e4dfd32da2106a5476b1c0503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328724930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def02f8ecd8102bdf9a9267a8a4e3831d60689685faeddf892be0cfe317ffc42`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 19:28:19 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:28:29 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 31 Aug 2026 19:28:29 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:28:29 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:28:29 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:28:29 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:28:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2afd431468629f533c80e9fd82733c63b1a9f7ec895184c3d55765a3ae0497`  
		Last Modified: Mon, 31 Aug 2026 19:28:54 GMT  
		Size: 38.3 MB (38285404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c98c0da8f6d0418ed636eaf62fcbafc2256ff20f2cdfa76eb7f253a402a90d`  
		Last Modified: Mon, 31 Aug 2026 19:28:58 GMT  
		Size: 242.5 MB (242511774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-13-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:cf8e30139604411f0d67bea7122ba510b5e775f6516184b979755c0eff044680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3670749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7552b41fa32e4da9a4fcb65bdf201bf45f6f2badf77404905f884db2ea4b4f83`

```dockerfile
```

-	Layers:
	-	`sha256:a3e2d4a40f27e423a30e1fcca8ae9283728407838c02390c4b5cb4d0d082ffda`  
		Last Modified: Mon, 31 Aug 2026 19:28:53 GMT  
		Size: 3.7 MB (3655407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bffe1cfaf6a211570223d0e7224ba45f1a7020f15f5de67085ab39c9675ff65a`  
		Last Modified: Mon, 31 Aug 2026 19:28:52 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-13-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:ffa8903fca139bd67b0a7a8567ae5f899dd14fb05b50dda355ce8e341cbd0a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325774705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e8f4a838d2eb883ee48a5ad0d5d621f288f1f2abcd4246319889d9f69d6e5e`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 19:45:31 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:45:42 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 31 Aug 2026 19:45:42 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:45:42 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 19:45:42 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 19:45:42 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-x64_bin.tar.gz'; 			downloadSha256='e4a930685f551dc72f843ee83fd1ce3901edeed8db422f0f98f3e9c0e7f4ddb8'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_linux-aarch64_bin.tar.gz'; 			downloadSha256='f6fb36475d6f8d59321da4e726b55d4e442e6667301a451ec62911c0a19cb049'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 31 Aug 2026 19:45:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacd2efaa26a26239dd745eafe31ed577105cf3b4b1643999d1726110a664130`  
		Last Modified: Mon, 31 Aug 2026 19:46:07 GMT  
		Size: 38.7 MB (38686350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d55ff1d18bfe1441e829739129fb8ceaf39883677917dd078dbc9757e52e1a`  
		Last Modified: Mon, 31 Aug 2026 19:46:11 GMT  
		Size: 240.6 MB (240610450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-13-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:1cfc97cd4391223ad65f8338ed4dc2282586b52b27feaebb52abb390184e6124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5225dfccb863a1a5089ddd620196455572818ec6a3fbfb699e572a119a2e7580`

```dockerfile
```

-	Layers:
	-	`sha256:9ce04d740c39380408da5c4399ed650e87f8a7ac7da89db91367c9b4f906f40f`  
		Last Modified: Mon, 31 Aug 2026 19:46:06 GMT  
		Size: 3.7 MB (3653017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:723158a193276e46bc13c7708206390554a299327feb1b557a98ee819b60dbe4`  
		Last Modified: Mon, 31 Aug 2026 19:46:05 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
