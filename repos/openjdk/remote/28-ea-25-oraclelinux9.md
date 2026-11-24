## `openjdk:28-ea-25-oraclelinux9`

```console
$ docker pull openjdk@sha256:836548e20706e44bd9002d306a66afe1312979c40ef41766612c4a84c6d4c588
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-25-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:7796ac920ab5e94f1c694dac273212b1a10db483a08900f3ce2e0c53dfc04b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.8 MB (322787408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8603034a97913bee11053a514d3e675a05757918f6daeaa00068d0291ac0396`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 23:28:05 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:28:05 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 00:08:12 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 24 Nov 2026 00:08:28 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 24 Nov 2026 00:08:28 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:08:28 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:08:28 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:08:28 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:08:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:33862e5ceb0800fad63d1008add0a685c61ff1cfa22e73c813a4c9c69a6ad49d`  
		Last Modified: Mon, 23 Nov 2026 23:28:16 GMT  
		Size: 40.0 MB (39952172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd77d8b8833a68195d13a49f4f3d81c490ff44fe7d9d71795da9b2218d055b7`  
		Last Modified: Tue, 24 Nov 2026 00:08:54 GMT  
		Size: 38.3 MB (38303155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b088f5daca4c5ff8ee4a38a2890062346b66ab3bf04dc44b8abd8b36fdefff`  
		Last Modified: Tue, 24 Nov 2026 00:08:58 GMT  
		Size: 244.5 MB (244532081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-25-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:9a393670a29e50b32643b9a89231b8ae5dea639bca7f690703e9904a650b9ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3654203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104c2ae94ddd429c2baf8aa49c7a4b90de7c2c759382a3053bbc6cbc442a5235`

```dockerfile
```

-	Layers:
	-	`sha256:472edf88bb1709979c7a1413cb47165e9993ef745a56c9b1cf40688c7b3b10fb`  
		Last Modified: Tue, 24 Nov 2026 00:08:52 GMT  
		Size: 3.6 MB (3638860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:697e6f7ccc6b0bd018b8ef2dd0b8c624ffb6bb1bcb16328edef1456b59145a8e`  
		Last Modified: Tue, 24 Nov 2026 00:08:52 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-25-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f2efffd8f7abca5f77bbab171103ccac67dd3659aab03bc621317315ab6b2af5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.7 MB (319733490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f59b9144188e739ee6b28b6f5b438895e5501995b3b4e0477de0c840cc8b588`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 23 Nov 2026 23:26:56 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 23 Nov 2026 23:26:56 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 00:08:18 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 24 Nov 2026 00:08:34 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 24 Nov 2026 00:08:34 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 00:08:34 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 00:08:34 GMT
ENV JAVA_VERSION=28-ea+25
# Tue, 24 Nov 2026 00:08:34 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-x64_bin.tar.gz'; 			downloadSha256='153fe277dec09662d3975480a3010bac00cccec05be2271d719aa194a7df04e0'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/25/GPL/openjdk-28-ea+25_linux-aarch64_bin.tar.gz'; 			downloadSha256='5c26dd3de67c06540b654e750ada428a05d92feb6c5fff9a32a06ff9dd000912'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 24 Nov 2026 00:08:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:417cdca15a600d512dcff11d2b366223724adbe60562114464784b1662bee681`  
		Last Modified: Mon, 23 Nov 2026 23:27:06 GMT  
		Size: 38.5 MB (38494185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b0114ac9af5935e3a969fae2c6440b759d6464d29513f2df47eac26436820e`  
		Last Modified: Tue, 24 Nov 2026 00:09:00 GMT  
		Size: 38.7 MB (38697390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e401eec443e972f062a33ed71456936984a14e7341738895b6b812d4c80db4`  
		Last Modified: Tue, 24 Nov 2026 00:09:06 GMT  
		Size: 242.5 MB (242541915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-25-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:5ac871805de2ce02b15d2fe95ab4ee8a2ac7a00af31bcfbdfb20ea732eeeffe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8be077e59c146a67d2fcd3b8688343f8e8debc234113a610c2a1e1cb80ecb74`

```dockerfile
```

-	Layers:
	-	`sha256:c8d06ef5bd22f4941c253ec27c645415ee076d0565b8314f1a25b7882e3aabb5`  
		Last Modified: Tue, 24 Nov 2026 00:08:59 GMT  
		Size: 3.6 MB (3636470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55a08eef6746e89e174d6642594d7e6ebbe7945ece382e5654fd21a4e796c987`  
		Last Modified: Tue, 24 Nov 2026 00:08:58 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
