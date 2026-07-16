## `clojure:tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:3a96e216f721237906f40fcf63fdad93d28e431c60055c63af43196ea111c7be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:75213005f8a83f2f3f50606692c8091f2dadfa8bd5bb52896c444d9625df3a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178935667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a6084842746c4b8e07694adde39f9662af90181497db02055421ae7acd9ccd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:35:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:35:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:35:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:35:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:35:16 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:35:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:35:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37e9331d583661f285d6d60d5a942a343a65c96b2ffd1c3a9fc69c31b0a745f`  
		Last Modified: Thu, 16 Jul 2026 01:35:50 GMT  
		Size: 92.6 MB (92574571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f772415078cde2767626168af81cc867bbbdade3b54c86d3678994cc803f8e8`  
		Last Modified: Thu, 16 Jul 2026 01:35:50 GMT  
		Size: 56.1 MB (56100300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d7ee1d296e3b2fdf0c8240f42e0f270c14b7c84413ecb74bc236ea68528446`  
		Last Modified: Thu, 16 Jul 2026 01:35:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09257e8332a05a2d6a54500adfc1a6a39dfe31fe3936c2e4ab205c08a9cfc46`  
		Last Modified: Thu, 16 Jul 2026 01:35:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e202742f8f221bf8601ae4eaec3f37a8b4bc7e46519148fdb78355dca8bdbcf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f96810de83c04c1d36c64698ce6f873ba9f0e27a84ef05c6fc4364fdd14b2b5`

```dockerfile
```

-	Layers:
	-	`sha256:b5d7f1629c25fd87b493d62de4cb1a2f6b0d215d292a65ea384df3db660d6067`  
		Last Modified: Thu, 16 Jul 2026 01:35:47 GMT  
		Size: 5.3 MB (5285939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c1cde83e5598fd9c163ef5b5d99db0e885f34e4a3966eb54c13ae7822fe3204`  
		Last Modified: Thu, 16 Jul 2026 01:35:47 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fb54b60ecee0e89dc6a934539c1f47543b862dc6ef1391ec88f2801d61ea0650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176559897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f814e9a700c907bbb599ed565e23694c801e0b7b1bc972a4f2af2de867d0dc34`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:31:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:24 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:31:24 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f1f0ffb158ff07d52f2af4b1546da5c88e47196af4d858c6ada907c4c2b098`  
		Last Modified: Thu, 16 Jul 2026 01:31:58 GMT  
		Size: 91.5 MB (91542278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95c10ff3c4a28224d074564c14e9169fc936f6409599d778273f967c57745ac`  
		Last Modified: Thu, 16 Jul 2026 01:31:58 GMT  
		Size: 56.3 MB (56267595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e240c07714bd9df5cdc683e6b78d8db61e98414eeff4e2bbc0070bbd561cce65`  
		Last Modified: Thu, 16 Jul 2026 01:31:55 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f754f3f92153f8d5424ed73d121930ca8696be8961e86fcc4521e33b9b118a60`  
		Last Modified: Thu, 16 Jul 2026 01:31:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a5aebd3c9015d36e580aa52296fbe01981de5f8c24848a14da808aa7873c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5308512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf7534e97d7c9ae80773a727a68bd8a0bca582072f0e36de339ae551015421b`

```dockerfile
```

-	Layers:
	-	`sha256:43c4045c34b1c9dfd48bac1edef14e366875bb884bb879955d2ea8ecc1b8953a`  
		Last Modified: Thu, 16 Jul 2026 01:31:55 GMT  
		Size: 5.3 MB (5291692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cd1b7994471836fbef9233a47c27d9bc2d49b03d585578997d09b48454efb03`  
		Last Modified: Thu, 16 Jul 2026 01:31:55 GMT  
		Size: 16.8 KB (16820 bytes)  
		MIME: application/vnd.in-toto+json
