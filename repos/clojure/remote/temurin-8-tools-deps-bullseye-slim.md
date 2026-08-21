## `clojure:temurin-8-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:e610320a8b09a3e53a4a164b4cb215ec2212c8474c589cd02e6fdad6fe5796ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f04f4ae3899a27e088148bb56256f4c569cc256d167156f564604fcbb1a0523f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141539011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3bc584446e3d609880aa17f1cf9f9113df8fef4b70166845035a6de9d8a916`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:09:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:24 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d912d057a43f89f83afdeb13a1e23218f360da847281dfa2ce695d4d08ab61ab`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 55.2 MB (55164403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4c82a63e95234da8ca896a4bd478c88ad628f33792cbee1e157ce4642ee58d`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 56.1 MB (56114344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bdbbdda2839edb62a33111b0a8817bc17ef63bed8129e299975885639b1303`  
		Last Modified: Fri, 21 Aug 2026 19:09:53 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:19df4cd523c93191506577fe16bd371918383710a6549ceabfa0483ac3475a9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4321a785b6cb25c9affb6252c01f8cdeea0a53bc7703827b6d6d806832dd7a`

```dockerfile
```

-	Layers:
	-	`sha256:7cf837f83a96977247588e57f954301e0eab71db6e7b416a59b9877effe29cae`  
		Last Modified: Fri, 21 Aug 2026 19:09:53 GMT  
		Size: 5.4 MB (5443412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d1cf4e2871bf1602bc669f7a36515814d3793b2b10132b08bd5c55b1fe02ac9`  
		Last Modified: Fri, 21 Aug 2026 19:09:53 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b21fb3da4ae29c714d419d814c6ebf3eb38f0e9e3a7140fbfd1aebf9448f4b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139293527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1f9d9cb23c2ed7047d43b64626e13125d5c94a4dad3a7c71cd4a9cd27597aa`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 18:59:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 18:59:59 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cffb5f5838932f57d5359cfbf509b2820fee8c29016390cfd2b458fada73ae`  
		Last Modified: Fri, 21 Aug 2026 19:00:32 GMT  
		Size: 54.3 MB (54262741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52506068d5f3e058a87a8fc70ed955f81e3d56161f20669dbd948cc537d2752`  
		Last Modified: Fri, 21 Aug 2026 19:00:33 GMT  
		Size: 56.3 MB (56281236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3faed41391bde63ee441f412d9c38dfc610fca0ea312a1e16d9ddf4428d0d5f7`  
		Last Modified: Fri, 21 Aug 2026 19:00:31 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f4320c8f660a996601d97dd168199aca22efdfb73733469444a70742663697a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b904d323efe3fc9d6ac90ae9cad0d240e598b3325b5260f768db5f92cd4cfe3`

```dockerfile
```

-	Layers:
	-	`sha256:4fb03f634bc2dc9a11bfaea171d3b2008cb2f8f4e0522c0e47a2917377d94f7d`  
		Last Modified: Fri, 21 Aug 2026 19:00:35 GMT  
		Size: 5.4 MB (5449844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d37f0b0b6ff1bf42e94fd613d1b6de4e7ec6961015f66abf48955b6713ff0580`  
		Last Modified: Fri, 21 Aug 2026 19:00:30 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
