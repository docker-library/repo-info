## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:8cd0ae49f7ed39d9b26cfc7adc7437586a68ecce4bdac5b48695feaba3175012
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1c41b5e98929c21fe2498f62736873884e20a13b2450d578f785698590dfa4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153944411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:495a5bd0777812f6123e1e016158e027bdf34b1b8d5b08c4cafb20eb285fb909`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:54:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:54:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:54:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:54:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:54:34 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:54:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:54:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:54:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609c699f427abec77afd136f4bcfa518f30c16b327d992f1a40480470ee09450`  
		Last Modified: Wed, 29 Jul 2026 17:55:10 GMT  
		Size: 55.2 MB (55198723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c337f729f36fe5f9a289e515b9aeac87cea453cd14e84963dd0d9d62cfa0823`  
		Last Modified: Wed, 29 Jul 2026 17:55:10 GMT  
		Size: 69.0 MB (68964138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726cb2ea6356e08fa6a5e411ff11e80de023857cbafdd96ee36eaaa2412cf01c`  
		Last Modified: Wed, 29 Jul 2026 17:55:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:98415e9da6ff81015afcbb902e3d3dff8b8925c4190ebb03dd8f6a382a46bb2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085d532c0a584e412db00d917fc325a153657aac1f1f9f649139552858f189b6`

```dockerfile
```

-	Layers:
	-	`sha256:ca5d2e3f7866ac9bdddd9b6c947643b3c494d30a1b65aa1ca1a88d0aeaf7f2a1`  
		Last Modified: Wed, 29 Jul 2026 17:55:08 GMT  
		Size: 5.4 MB (5377692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d8b3445c967575cb6342734c390a986f1cb49174727cd3f13aa1da5184e2771`  
		Last Modified: Wed, 29 Jul 2026 17:55:08 GMT  
		Size: 14.4 KB (14381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:26b8787bf9a13137236b3397340a4ce3a88ee72f83ce5f1ccd6f8a2b4f3307c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153206502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719e454aa3ad785be5ade9b244d292ee50108473413bcf9f641d56c003ac7044`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:03:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:03:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:03:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:03:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:03:56 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9872e67ad4f81ffe2701002ddd64bd21bea5a722907b77c24346be783f0db5`  
		Last Modified: Wed, 29 Jul 2026 18:04:29 GMT  
		Size: 54.3 MB (54272921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ee95436a4a770e7996f62dee1c75018de8e76e3e6e022ccc28c4e28d570d0e`  
		Last Modified: Wed, 29 Jul 2026 18:04:30 GMT  
		Size: 68.8 MB (68789231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043353f154ec791798e9b01bb515131bfac960919b12c91cfd18ae4fe2265a72`  
		Last Modified: Wed, 29 Jul 2026 18:04:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:23969395b61f4998998b391517da5a995b1db4953de41b8d7d5acc29d63386fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfa877f79e7dd7ed4ae4a68014ed7c27baf3158b2a0232b318cc68d78b44a9e`

```dockerfile
```

-	Layers:
	-	`sha256:4c630dabd0c0d2580d782bd0201b59fc447edce0fd6b80adfd9c8f13d3813a6e`  
		Last Modified: Wed, 29 Jul 2026 18:04:27 GMT  
		Size: 5.4 MB (5384153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:736a408f4e2a16a29198e6859ed10a68d31e5238a0033cfc9a577d56dc64970f`  
		Last Modified: Wed, 29 Jul 2026 18:04:27 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5382e6e03f58250cc1723580f8b86fb7c975366f9831afa9a917e037f31dc8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160654751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1273dc0db8d9f0b86df7e01d3937c395b97e62e83be2ce13f942854e1a98bd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:55:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:03 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9428769cf11b9962be8adbfa527f5fb1297b45eea39750679a8b1e0198c1f58`  
		Last Modified: Wed, 29 Jul 2026 17:56:47 GMT  
		Size: 52.7 MB (52669153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a106d2b7d6b8525d450a35d5b14594ede2a2c34a2241e502fbd702f2c6ce54f`  
		Last Modified: Wed, 29 Jul 2026 17:56:47 GMT  
		Size: 74.4 MB (74383476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d48a5db9d80a2e783d3d78cdc396ec52b046d1fd097416ee67aef3675875a3b`  
		Last Modified: Wed, 29 Jul 2026 17:56:44 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e994a6ca2b2e346e6b3471b6971d25bea6102b3a8018582b8678bcd58813b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571bd05aef8d6f6e071e847166274326390e45ae23f32c360edb032f604e45ef`

```dockerfile
```

-	Layers:
	-	`sha256:796f0a0c1bd7bbfa549e18cd5e9ffee9eb4902e5c8291e7cc84e8a0390041858`  
		Last Modified: Wed, 29 Jul 2026 17:56:45 GMT  
		Size: 5.4 MB (5382658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eb1e19a51526a3fbc1c51ec66f6f58e780642ff7c34f554737d3d7999eb05aa`  
		Last Modified: Wed, 29 Jul 2026 17:56:44 GMT  
		Size: 14.4 KB (14429 bytes)  
		MIME: application/vnd.in-toto+json
