## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:1d38317b9bf47bea0fdd93154fcb6f533660c6f3839c8ac153bbd42ad0613edd
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
$ docker pull clojure@sha256:7a45b517994426e0c77b516a80a1d273c5e76df14792630758bd93f7df45e76d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241143644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edaed9c762cf415169fe76f2de466da0f91960dd5e38a53ba6550f989ca1adf`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:43:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:43:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:43:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:43:53 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:50:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:50:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:50:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccae2a29775f4b87ed1664fa003cbd6f8018f51b1b85e136fdd9c8eae069cde`  
		Last Modified: Sat, 19 Sep 2026 07:48:21 GMT  
		Size: 133.1 MB (133090122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cbe0b517431a8d03080ceb00d7ba2738b4b5b84568397ed020ff04ae531cb1`  
		Last Modified: Sat, 19 Sep 2026 07:51:37 GMT  
		Size: 74.4 MB (74411642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af2052e61217d544f4ee131c64db5723940097a01f677f8fc670c77efb876aa`  
		Last Modified: Sat, 19 Sep 2026 07:51:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9bd9825bdac7400609add367b120e91ea48a4d7f2b322e38703fae76585a9f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5301023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a45a03142b9dfc7b303f464d807b31930d941fdf8701a7133b8ddfe784c468e`

```dockerfile
```

-	Layers:
	-	`sha256:4f04373d7e6d53e58ad951f3ed9a5eded32fcfba8871672e8db947262b57c2cd`  
		Last Modified: Sat, 19 Sep 2026 07:51:35 GMT  
		Size: 5.3 MB (5286578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a719441303153d7028752963e22fa06728e72871b25f5378044de67c6cc03e9b`  
		Last Modified: Sat, 19 Sep 2026 07:51:35 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
