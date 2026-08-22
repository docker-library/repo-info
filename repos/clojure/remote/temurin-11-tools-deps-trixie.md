## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:dd037df7344f4ca88e434849c3be6b40e7a629c9b59f689c094bd150e499ba17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8a3a4901a5cbcb30e1778d306d9d114abc436f5354f1c7cf09f9ef023f5e85bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277713336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4df81c8ab5299ac6db2e0d94062c72bf93acb1281f162b50b8920e1e54b3a1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:12:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:47 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706f753341421fea60fc45e40735d59eeb651f9b847457f7001d14ad8f6978e3`  
		Last Modified: Fri, 21 Aug 2026 19:13:26 GMT  
		Size: 145.9 MB (145861378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc578333cd963f579c65cc6f1839558ea9f85d6938cf489cdb7b18dbe06b3204`  
		Last Modified: Fri, 21 Aug 2026 19:13:24 GMT  
		Size: 82.5 MB (82539000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7cb6138f8f660dd46ee9ad38200db1c2a69f22cd3ee118bfbe5fadb366595fd`  
		Last Modified: Fri, 21 Aug 2026 19:13:22 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cfb69bcacd026ee6bddaee53731347455dc773d4798726e6dce5acab19024671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11ad313ac3cc5b344688d8c30c8be6e3dec3ee03249478410e684c9871d98f6`

```dockerfile
```

-	Layers:
	-	`sha256:10fe66786375590bd5161cd24991fcb04fd1d18458bfa342d21b7bffce26cf3e`  
		Last Modified: Fri, 21 Aug 2026 19:13:22 GMT  
		Size: 7.5 MB (7488407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57d8cb07dc5b9cc46cd41a10fda6ee84898e8b9c3c379c7216d5e37fd59c7348`  
		Last Modified: Fri, 21 Aug 2026 19:13:21 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fec4860b6455392c4432109bce7eb1239c5c0f1536ec02966fecfcf43d2ff2bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274600219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ebaecdbe6135940376251383d1944ad902a900ec632301af20de6a899e8d00`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:02:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:02:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:02:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:02:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:02:52 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:03:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:03:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:03:11 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08d1d9c241a15b573180aa8b37eaafabf724aac24796468d8328b4430093165`  
		Last Modified: Fri, 21 Aug 2026 19:03:35 GMT  
		Size: 142.6 MB (142566617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfa2f96385c4e4485aa377f6b2d92428efe629fe572fcbe152acb594e0c5513`  
		Last Modified: Fri, 21 Aug 2026 19:03:34 GMT  
		Size: 82.4 MB (82359113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcafb1e8eee66390fed4cbae60c53bacdd85f18ba3aceab8289a752bca0b1ec`  
		Last Modified: Fri, 21 Aug 2026 19:03:31 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:79df175ba9f86bcbcb7a3c1e295dca8414321b7de615e32d6bf7d90ec653fe72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d67eb5e66d526aed349d4ab886b7e4c64eb17da714f9a30ca989337d0bde0665`

```dockerfile
```

-	Layers:
	-	`sha256:4ebda18a74388b12894554406cdd7b3d372f6750b821f0bc169cba6ce4dd97a9`  
		Last Modified: Fri, 21 Aug 2026 19:03:32 GMT  
		Size: 7.5 MB (7495418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:575e03c48463a23bed84d7bf344db78ba8f87e3448f7f5f8aa00c9730233bf99`  
		Last Modified: Fri, 21 Aug 2026 19:03:31 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:dcd1bed1874716f048a4c511f536f301bf329c9c3e2830c0335eb625119e2cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274174791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a3623dec1a7348a994767a4a95971861c5167e245b9028d7461573a12df6e5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:37:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:37:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:37:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:37:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:45:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 21:45:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 21:45:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084b8690c19959508c59fd39f894e560873583a3645792800fb1e42ab4d47b40`  
		Last Modified: Fri, 21 Aug 2026 21:41:18 GMT  
		Size: 133.1 MB (133089927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f595a62c7300f77d4c7ee682e7aa417e2a21c53c04e044149dd26831c4ad06a7`  
		Last Modified: Fri, 21 Aug 2026 21:46:18 GMT  
		Size: 88.0 MB (87950613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df3133518f2bc53154b853a73955f5229d2820703d79ec4da0f31b11466376d`  
		Last Modified: Fri, 21 Aug 2026 21:46:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f3ab67409949e0eaa3ec31ccff148adacd6f0fb7979e8a18b157dac9d82cbbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787722aa636fa9741131a5509b984d6f93f8b1f784b061931622dadcdf5878e7`

```dockerfile
```

-	Layers:
	-	`sha256:e971e9715f5faa025e968000c3f4caf9fa0d35deb20163e75475085294a2a946`  
		Last Modified: Fri, 21 Aug 2026 21:46:16 GMT  
		Size: 7.5 MB (7492213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:581847e027d28a436756343cbbb7c4f27bece803a5e46890c66420b580ac2ec4`  
		Last Modified: Fri, 21 Aug 2026 21:46:15 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:b08997e5f54056c2d2e2ee7a28b367d73db6ad0df3614ef9007c127195aca4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259542984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7a4d0a84bcc19fa907a57552605699869e1c788100f793e0697bc56af55758`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:51:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:51:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:51:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:51:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:51:06 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:53:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 18:53:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 18:53:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a778c311318f1c4d592c8c78b51d80ebcab847ffe14b8ac3d137db223974c38`  
		Last Modified: Fri, 21 Aug 2026 18:52:47 GMT  
		Size: 126.6 MB (126641458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82078a998189fd60b0d1b438113947d3b854cc7176aeb6d194e7fed77addd4f`  
		Last Modified: Fri, 21 Aug 2026 18:54:15 GMT  
		Size: 83.5 MB (83519458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bb4a0cd9ebb3b059c1ad8c3a44829e538bdea0ca148bdf514e9bd6dacbec78`  
		Last Modified: Fri, 21 Aug 2026 18:54:14 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e955b842f57f21653dc07a5f9044e8cb84ab3ee633d70225e03e342de0591298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a485d303f620ee1d56e38c045bc0e9eb009dc031aa7f1705643fe67b85e9826`

```dockerfile
```

-	Layers:
	-	`sha256:bcf52a10cfc53bcd91712a35bba92e19a579100b4c54e68b6e3e46b19b73b011`  
		Last Modified: Fri, 21 Aug 2026 18:54:14 GMT  
		Size: 7.5 MB (7484333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b4322119f35d063dd1aa11fdb5a8faf8a9ddd50c887a8d085c25a5d06626df5`  
		Last Modified: Fri, 21 Aug 2026 18:54:14 GMT  
		Size: 13.4 KB (13384 bytes)  
		MIME: application/vnd.in-toto+json
