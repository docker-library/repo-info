## `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:cb9b2af8f6e413cbd894158487616b9d3dbfb03130ea3a01a6ed66ba777a2a14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:079ae516f9fa290ed573472155802057351d0e7f65b8a1068556b45c88eb8e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232273061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f01db3522b34960365873a6080706d6180a0aa4812047b6fa7fe8cef496e220`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:56:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:04 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a400e6f9bc023d82a716ee6847bad0dfcca317876495c3efdbbb3d7ffb3b0ce2`  
		Last Modified: Wed, 29 Jul 2026 17:56:38 GMT  
		Size: 145.9 MB (145906279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b68c938b703e29a2b6782d22d51ea429bfdd4c0b589e24c5692a658c54c239e`  
		Last Modified: Wed, 29 Jul 2026 17:56:36 GMT  
		Size: 56.1 MB (56105984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a657df6b81f0545804da0b3485295c24ce1736ed1a31d1d62fabd145d11df75`  
		Last Modified: Wed, 29 Jul 2026 17:56:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86398ed5ee289bb6d8e5a2aed785e5ca6ecfefaf9021e6c315b459443e307a6`  
		Last Modified: Wed, 29 Jul 2026 17:56:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:90c6472e1f9b981c09b40099e7ded81b45921746ea64ef144b1389f18d15b510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5333839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b86b92d02f6294fdac8a5f6bbb058bf6b1e600edb52f8ceb4655120544f5a786`

```dockerfile
```

-	Layers:
	-	`sha256:76a99f88fa424bcd4f1db4f7b9bd0300602b6f10de6b17eb5bde2b56cc7e146c`  
		Last Modified: Wed, 29 Jul 2026 17:56:34 GMT  
		Size: 5.3 MB (5317849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ea024a78da3b37b0911fad78a2c4d26889b590429652f2dfcd737082b2861f0`  
		Last Modified: Wed, 29 Jul 2026 17:56:33 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a75fba9b50eb93d3bf29786712758049a8bd253910fb08d9d49809cedc196f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229750387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b2268a3291993a2bac8e9babe8b68ecb8ec0a627e1134101f71d72f980505c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:04:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:43 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:04:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7021fd0cb98e46fc86b79a927752671a1590587c65a3af8f6b8b2db88c084b53`  
		Last Modified: Wed, 29 Jul 2026 18:05:19 GMT  
		Size: 144.7 MB (144724313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606d55f8176fbad8028effb424213786dcbb973258530a20ab13c28d3b6a05b1`  
		Last Modified: Wed, 29 Jul 2026 18:05:17 GMT  
		Size: 56.3 MB (56276047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f19bccf3108338ed1f86993117e0e4633a75aa6319b041b5e28fecd5607633`  
		Last Modified: Wed, 29 Jul 2026 18:05:15 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d93e4ad267ebf3c733af7fdf0c6edcabb0a4cabb1c33bb33cf69b417daa0329`  
		Last Modified: Wed, 29 Jul 2026 18:05:15 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c88579ad6d09a0bf4c54428c4b551eed5d8f1703d22f918277fb31d9d3716dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd4ddec7e6bb927a42e29cc90491be590e4a57900c1c0398ff78c92b43e8b974`

```dockerfile
```

-	Layers:
	-	`sha256:9122b44a1ac0cfd3c78920b2b72fde6cc2684ebe850f0795dbc58e4008183ad0`  
		Last Modified: Wed, 29 Jul 2026 18:05:15 GMT  
		Size: 5.3 MB (5323581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f22d8b4c90355f129103e703ee32b04a77af173c03eed6deb4be22d0e1ce54ba`  
		Last Modified: Wed, 29 Jul 2026 18:05:15 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json
