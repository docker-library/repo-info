## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:1c2e663ba5f7ab88d267edd9914ed4d918895578298980a139e847e2e21b0eb1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8747402fb1a79c597b1d9c1b0567fbe4020bf56ae2601b6834f8e9b3fa8d72c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244686561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4526406b132c8b3338c301564cc2c5c5affd6f1a90baf0c773b7e63764eb0e99`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:20:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:20:42 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:20:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:20:57 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a415be3137bc4c15ac05b3f57d913f677b30eac4f6db7767d45d2007a54c4e0`  
		Last Modified: Fri, 25 Sep 2026 23:21:17 GMT  
		Size: 145.9 MB (145864132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c600da0fe47c040d086fda1093f5e1f1a31e2f7c435cd4e29ef8b4f249904b41`  
		Last Modified: Fri, 25 Sep 2026 23:21:16 GMT  
		Size: 69.0 MB (68991364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b744c6311aba0c0736e1c10a530798d284df48a644a362d024b6c37db4e9f210`  
		Last Modified: Fri, 25 Sep 2026 23:21:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ffc1815bfede81ac08271edd16fc73492253a7b7fd4b2b232539e7b743fe0941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea656a6e3a076be7b46cef7721383e01a8a5e08c601a3873328ad62492c0ee12`

```dockerfile
```

-	Layers:
	-	`sha256:b5cd732adaef343f65316669752fdb01b2396e1eb1c3460cbd0fb9ff020ddf2f`  
		Last Modified: Fri, 25 Sep 2026 23:21:13 GMT  
		Size: 5.3 MB (5282830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cafd4f33997c21df801087190ba89cb98f59dcfb3e0e09a08e758e1370340d26`  
		Last Modified: Fri, 25 Sep 2026 23:21:13 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e6dd40b86121fc186d192af05ea00ced04104b641c746409d8792a9f133009a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241575512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf6904f0bac3bcc39ff13b865518fa0a29cd2caad5e93ac24136c357377bae8`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:18:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:16 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:18:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:18:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25979dd050b568488db9ecdde67c72749ae8696b8ee4dcb576d830795d244335`  
		Last Modified: Fri, 25 Sep 2026 23:18:59 GMT  
		Size: 142.6 MB (142576518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccca33e7efa54b47ce75de29aaeb4c5d89bc0a05ec394e29e0546701bc86fbcc`  
		Last Modified: Fri, 25 Sep 2026 23:18:58 GMT  
		Size: 68.8 MB (68808657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4c3b5497863b9ee1f5006fadd64a7793a7a520abb7885aeb3bf64cc4b13ca5`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e45e3476fe5c6effa7a69943b20489f85acb486abcf9b4f8078c6aa11d03bda2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5303723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b48384f5cba1c81a3785fd936cf67ffc90a354fb68fb832ed3d7446d8cb5f0e`

```dockerfile
```

-	Layers:
	-	`sha256:1ca0d8440c541545e5510e7569c0206cb3b03540fbfe1a98f43e893f24bde425`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 5.3 MB (5289209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9406108c20df4df80b7ad55973adc060c2d7528f4c825515788f79140bed04d`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 14.5 KB (14514 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0d6444f128bb8a7bd9822c3461b61588368d8c13bc1661f5e24c4fab3ce28986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241148362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4a277fa7af206e28d4a2bc1281604e3b56bc1b7d9c5c205733b0a82bfe6a16`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 04:10:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:10:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:10:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:10:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:10:50 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:22:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:22:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:22:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f015418d8b6088bf9375f9aae3d0891166138c6a5b2e04f870db3900f3ba8bf`  
		Last Modified: Sat, 26 Sep 2026 04:14:12 GMT  
		Size: 133.1 MB (133094693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409745529554cb7342ea9589d20815d0b35f3ee67d5bd4b27d06964624230d9b`  
		Last Modified: Sat, 26 Sep 2026 04:23:32 GMT  
		Size: 74.4 MB (74411789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5512a397c64b1e65a78b142551029628e520e09b6c4cd6cba7509d28592e72`  
		Last Modified: Sat, 26 Sep 2026 04:23:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4d7155e98b0aa33e231c82ee7c5f3a7c775b46a690cfab72a1fabd6effd6564d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70502ca1b6d4b98b3e0d830af6c2f830a9ab8e114daf6004c4fd85dc58d2d202`

```dockerfile
```

-	Layers:
	-	`sha256:f2a7346fd093aa8e1613a58b3f13365762d09e00920de6bc1ee5d928a270fa63`  
		Last Modified: Sat, 26 Sep 2026 04:23:30 GMT  
		Size: 5.3 MB (5286586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366156adb4119f0dc6f8fc5919bc4c0b8efea9c1509f5076f704f39771d96f48`  
		Last Modified: Sat, 26 Sep 2026 04:23:30 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
