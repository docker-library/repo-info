## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:db62f7161fdce7d7f43cea2587f3048bc84b1d1dc27cbcc4cc369a2b5815cd6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:08e1d9f60c8af56c07a21ee68b2da0ccb3c67e6699bfd97c4168104f1bcf16c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244931817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afcb492dda91924b2ef2dee6accb8f210b7c0eda5bd9ade491f0fc03db163a58`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:19:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:19:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:19:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:19:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:19:00 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:19:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:19:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:19:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:19:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:19:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e87a0a13ce5db991570e80b127901fb1621e5bc280330336a618e853243b05`  
		Last Modified: Tue, 03 Nov 2026 22:19:35 GMT  
		Size: 146.1 MB (146086169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ce4ae25c18aada04fd64c0039ecc4bfdf9864fcc50f427eefb1137e2d89111`  
		Last Modified: Tue, 03 Nov 2026 22:19:34 GMT  
		Size: 69.0 MB (68989367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06a339aed885ea58aa8d8db4bceadc959424b611fe37b92da913514fa7d2428`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5ade09191e23d8b4b5643c0613273a0e287e718059cc1bc30290de96f50f2c`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ef8b2eca9d68b564f7e8f27b17c037aff2ac28cecf68e9b54d032766670db695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e074aa1c37ca57a44666bb8005a6468e50c73dcf82b7bf00f47e4ca64fb982c9`

```dockerfile
```

-	Layers:
	-	`sha256:65eaf3c89977329c9ef2106df22dc0618d6dd572670ee7486f0fbb05f68eaca2`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 5.3 MB (5262057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d03841543cca27bb9fe7b97e603590736666aed527e9b89f73928e5ed4da82a3`  
		Last Modified: Tue, 03 Nov 2026 22:19:31 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:90bc1b0d3ba7db9e4f1ecd72baa55c38a28bb51255a6cb80f7978b78d5402a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243976845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:addcf3618853fafd1cd082b188cfac2cc811e0a206ab74c4ed12c1495b2f9048`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:18:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:18:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:18:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:18:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:18:29 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:18:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:18:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eba71fb7c9598a522acc682d5ef855bedf100303b491705cfb7a3f737c4dc7f`  
		Last Modified: Tue, 03 Nov 2026 22:19:09 GMT  
		Size: 145.0 MB (144957185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2c34b9f7c2f65021529074bd69a74536550faf4dd738ab2cb3058334c11c12`  
		Last Modified: Tue, 03 Nov 2026 22:19:08 GMT  
		Size: 68.8 MB (68805118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16b39d0a8f0036ca797d9dbda634a0816137b8b1bff6936d838a14eb827e353`  
		Last Modified: Tue, 03 Nov 2026 22:19:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8addd42571ddd56831446b50c4ed9a50d0847d912fe9cb5d9791c3d9fa945683`  
		Last Modified: Tue, 03 Nov 2026 22:19:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d9b034f047448daf98f681e29611c3caefe1a4004c22916333398ccecd728a09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0b12dd6b8cd906a953983b26f8504f2c2f42015c42c30a9567bbc3c26c71f5`

```dockerfile
```

-	Layers:
	-	`sha256:80def434505e5ef2a55389dbd912f40305465f78418523ee8aac26e18f19e933`  
		Last Modified: Tue, 03 Nov 2026 22:19:05 GMT  
		Size: 5.3 MB (5267818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca27ff2db3b0fee6e24b79933e4a9f5f0ba58d7efa63ec25bbb10190c806865d`  
		Last Modified: Tue, 03 Nov 2026 22:19:05 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3233ed6686ba946703626de20b6ac709ac12802a395b5f03a63b974f359af843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252946491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648a4b6003989c3fac71ce3509b7165c8863e2323fae03e5892f0e67fa859cf2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:42:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:42:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:42:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:42:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:42:29 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:51:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:51:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:51:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa1439eedc0664cd6ab9b06966ee483aca719e4ede6de00d0dfdd8f2f09ce66`  
		Last Modified: Tue, 03 Nov 2026 22:46:53 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f133aa9d9fe2198d118c1662c238f3edf4c475f4b2138aa90b7527bf289b57`  
		Last Modified: Tue, 03 Nov 2026 22:51:56 GMT  
		Size: 74.4 MB (74418695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a0bd7f05092c0b5ff47cf47e84d270c76a6d6c8c314982b11c55743155a7ed`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30783d8ecce5c8bc536c2eca746b1fdcfccd15073b6723e0201aaed91197dba3`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3cb193670510968f4ce0cfead219d808df1ca2e013cb21d32977af5d78ecabf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4c832c248ef49646fed34a8bf0afc1253f9ba9ce0a64d64363e8a3784689d0`

```dockerfile
```

-	Layers:
	-	`sha256:26a7612279fe1c464f83d1bfe7f9c91695a064c24a1e86359f2fe1106e9024c4`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 5.3 MB (5265182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a419b6f0bcc21a26854ca4b18a1d57cba929f8cf26041d17f36859711a385ae5`  
		Last Modified: Tue, 03 Nov 2026 22:51:54 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
