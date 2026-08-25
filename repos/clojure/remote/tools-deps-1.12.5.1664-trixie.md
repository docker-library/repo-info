## `clojure:tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:b16bd0078a667d772e6eed4f384b092bf3f184e1164c5234932e488d4979c7f0
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

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:eb63b3284ee03d9eb920036fcfc6799de05a05be7e178f7e87162b6252f56fb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224467336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1229cbbc228587780a3427d7c194d3bf861cad68f0480d6404bf7c83c331b2e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:21:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:21:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:21:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:21:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe87137695f516a140d3f31a97429069b0ad2dcf93d20d6b33013a5f9d678d7`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 92.6 MB (92615096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94f06a2e3c196bb3647964d4d3ae531f939df285ec5095e931757fc54bc61c5`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 82.5 MB (82538886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b46be1d8be7265d1a05bb0876563ef61a668bb973ba9b091fcf93d252b3be5`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd7a3a1d3b2f3fdf55569c19f804c670398910033fcb50b5088c3dc947f6cc5`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a66ecd805a1bc7cfbcb1ca31806e9bb93f017994645c5e4570c6ee67b42e5529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a5f96dc17d9f77b53418f975e491a4b24ef62ef7cfcbd1e9e6e3086ff19716`

```dockerfile
```

-	Layers:
	-	`sha256:d4ffae8007f45a63a967e786061631a570d7cbc5e2e7033249ca139189e2708b`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 7.4 MB (7436955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b27584a7a4621a74718ba38362aa9546338bd9d087390416ee34f0963f9ac143`  
		Last Modified: Fri, 21 Aug 2026 19:21:52 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bebc6fa2880d9bca1e1f4bbb4b9dd469c01d2dbe167bea9730437275aafa9e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223565791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2904cd2abeee5a6b359ee5cb9b90fdbe20d3e327d1dc54aab5adade5b362902`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:09:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:15 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03e057ebef32b2b4e11fbe6440ac759c920e0d30d379c61a1281326fdb4f48c`  
		Last Modified: Fri, 21 Aug 2026 19:09:59 GMT  
		Size: 91.5 MB (91532188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea5f37fb50fb6bf2fb9e23a723104f341da4bad4de2679ca85e5db160055445`  
		Last Modified: Fri, 21 Aug 2026 19:09:59 GMT  
		Size: 82.4 MB (82358720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9859373fb347cbbd31e8c34a29bac412f90f5981f3af0f64b4dfe63c3c512030`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89210fef4a982a79e59ce89bcb7c0b5b6be0b6d0b08b57129aa0adf9d78745f9`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f001be918bb0547598f09550c27a8305c5e16406e9915581d2834746705b455d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d9d262923c5569085cad967427bfa585a274495f4cb082798110304f3114bf`

```dockerfile
```

-	Layers:
	-	`sha256:129266ed2758d02e00bf492e3f62cc41f19e94d1909ee7dc1f0643bb5b73526d`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 7.4 MB (7443369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48e12d3e5d89ee896627f674d92f1729c1b2d878cf2754d30b21bfff1193fc6d`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 16.7 KB (16709 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:acf56ae62e6ae2e43d0cfe334d39884edee749870178fd1b9a70bd47ea8eb62b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232341249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecc6ab5e996f873e286e1389cc0f1ff7347a52ae77cec32becc3a7de91d240c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:01:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:01:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:01:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:01:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 23:01:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:07:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 23:07:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 23:07:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:07:37 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:07:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1861b8c1201eea487929ad0d0388eb3f0928087bc066346e43a0a6fa142eba`  
		Last Modified: Fri, 21 Aug 2026 23:05:17 GMT  
		Size: 91.3 MB (91255844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c1e684cd9ca67d80fe23650b10cf6afaf5e318a744d12b7c0c0876a67f5290`  
		Last Modified: Fri, 21 Aug 2026 23:08:12 GMT  
		Size: 88.0 MB (87950760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449188e10e2d4a343c17adb55a132f18968afc359da21b2358de1b7c5042a45d`  
		Last Modified: Fri, 21 Aug 2026 23:08:10 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e1ae5458254f2e7f3ce9a3baf44eb355b4cad3abcd2256c3742179234d2340`  
		Last Modified: Fri, 21 Aug 2026 23:08:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bf80406e27d287ff3788ed89ef64787e6e53aba94982d6dc6b7ea84e297b30df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7441329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a9114985b2eca04711b400d09a43131bbd69df0d1ab4bf48a9f2518c5bb5ba`

```dockerfile
```

-	Layers:
	-	`sha256:2d0b5f6fcc5192e139464a6a25cf9ae73dddfdc7e5edd86559c365ccbc162f52`  
		Last Modified: Fri, 21 Aug 2026 23:08:10 GMT  
		Size: 7.4 MB (7424700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0caa46df2ed18c53d946e3434f56515cc8215e353bc635818d9bf73f18e38191`  
		Last Modified: Fri, 21 Aug 2026 23:08:09 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:82f359c705697ac31a52279f639b776b1bb0dec0f6c30a65d0782e41d0f86dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221349252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05bbeb017f0e3f328ce8a5d4a96254b78f831d9b0502744d5bbb550d1c93a20`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:10:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:10:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:10:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:10:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:10:15 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:10:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:10:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:10:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa685fab59e7a5dc3e397107fb625359499cd806d7e36b9b343d8e05d5ff4af`  
		Last Modified: Tue, 25 Aug 2026 02:10:58 GMT  
		Size: 88.4 MB (88421954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96369df88fa66ae34f24a02ace1f414be770dd448bf4ac99bcde4714e008c329`  
		Last Modified: Tue, 25 Aug 2026 02:11:01 GMT  
		Size: 83.5 MB (83519560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721876665beedb8cb394036dadcddb98c0344ea044ead312cd71419974f506b`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc5b505d0ce8d51057e9c14a0961bbc79980098c4126d5c735b21e330c533f3`  
		Last Modified: Tue, 25 Aug 2026 02:10:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:16b145fd5c85c8c8c0fd9fa5cea2366778dced511601ec0df247d9c389b33d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31883d4cf975315235e77275a4c3ba446adebb6c2b34f9cefd5729c359d95608`

```dockerfile
```

-	Layers:
	-	`sha256:d3c93fce2e4ce89c81a02c04c437263586a354d77b53fc4a4f1da4e5317b123c`  
		Last Modified: Tue, 25 Aug 2026 02:10:59 GMT  
		Size: 7.4 MB (7422417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29a53f10b4168f81fb4e6ec946fb2336770943cc47df49aefce854c173cc93c3`  
		Last Modified: Tue, 25 Aug 2026 02:10:58 GMT  
		Size: 16.6 KB (16568 bytes)  
		MIME: application/vnd.in-toto+json
