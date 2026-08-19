## `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:f2df8a166336f647ce1e60c3638da27bdba73e67e027b9f090918b97e1051a3d
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

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c756a8310a3648e501e1ecc80f47ac102883405786a04210828072ea782bda35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191321550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39498afa463d33186d374a436546510d551728a271aba9a915f6ec889320de0d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:49:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:49:30 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:49:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:49:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69462bc23804a3cf577ccfafb6734121781cbb821330664a4256bee01ec7a793`  
		Last Modified: Tue, 18 Aug 2026 20:50:05 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2d1b0db2c5d9bb0c607534ff1535c3ce2b806fe525af6841be08a1f2a9afe14`  
		Last Modified: Tue, 18 Aug 2026 20:50:04 GMT  
		Size: 69.0 MB (68965150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e4bee09c15e9f62b3ee272bf1db2b53964a1694d147b1125786644761c6eae`  
		Last Modified: Tue, 18 Aug 2026 20:50:01 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee897673bf8647a8020e9da8450dc9479ebdd3b431b3f9357c455a646fa8a733`  
		Last Modified: Tue, 18 Aug 2026 20:50:01 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9ee73b60c56796e74c1cbbd65bc8869fefb655c88121fdf8b20b070a2d9984e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64bbe124cbd4dc3ee00ff1695eb51578c797486f8df278ba1ae36c3418e7b4b`

```dockerfile
```

-	Layers:
	-	`sha256:7a1322667226bb9c6e6740b975d9e1ac8b10622f8c9f09abc565417c41d142cc`  
		Last Modified: Tue, 18 Aug 2026 20:50:02 GMT  
		Size: 5.2 MB (5225446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c87ea6a066448138b76df1adf638d9ade18894e8e830d85cca39022d5ea0a91`  
		Last Modified: Tue, 18 Aug 2026 20:50:01 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7d2f3357ab205242ff8edb9e7196cff9ab8f4f3825235fa8a29f9f31a74b6771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190472685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4af7f301df12473defbbb87625dc9adff6ebd9ae258911dd02489750c7be292c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:49:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:22 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:49:22 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:49:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:49:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43664aa13f0970a44337185e89f0c9e0e03e480d8110c622bbf973ac858aa4a6`  
		Last Modified: Tue, 18 Aug 2026 20:50:00 GMT  
		Size: 91.5 MB (91542256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5496d514f3907573f6932cb43f5bb8875df8ce62573c703de1fa40c4e62da85a`  
		Last Modified: Tue, 18 Aug 2026 20:50:00 GMT  
		Size: 68.8 MB (68785782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95cdabd2387430c4d635f5d1e118acc64a9eff7010fd767a778d142dbb8c123`  
		Last Modified: Tue, 18 Aug 2026 20:49:57 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec414008ec1c3e0018ccd13c36b67c632b17902a6b2517f1ad002c6cbff9fc17`  
		Last Modified: Tue, 18 Aug 2026 20:49:57 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee5c9ee62c4671d9a01943790c5a526caadd868535990008daede7cdac8e860c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a640c0429ce515d12c6c224ae6c1584bccf0fc38a2ef69cdf20c1e8be831e14`

```dockerfile
```

-	Layers:
	-	`sha256:4c4f898f458a62a22e5aa4089c4efd392d6c98d913ab05ad6a140339a6b7e4b8`  
		Last Modified: Tue, 18 Aug 2026 20:49:57 GMT  
		Size: 5.2 MB (5231228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d3162673181a253cd6f7c777e0351beb60c491ebb6b3b849167fd041b7acd68`  
		Last Modified: Tue, 18 Aug 2026 20:49:57 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:df277d2b64ef9ede923522f9f86b23e95dc93ac1b4000dfc9d885d90e64e056e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199892191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7fce9e2b7ea96dcbffca76941e86b378cc4182f24c05ed1d4b4cca6711df6bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:53:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:53:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:53:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:53:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:53:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:57:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:57:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:57:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:57:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:57:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94c393a1c84f084a056f22331c9dd69fe2dbe694e46871ba350a33ea590f377`  
		Last Modified: Wed, 05 Aug 2026 07:56:47 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d500d005cd40b651800c9b4db8e1c945631107d28860d99353bae7e4b645c475`  
		Last Modified: Wed, 05 Aug 2026 07:58:12 GMT  
		Size: 74.4 MB (74375768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b515a12e17631b60ea347006e24d4a5ca4acf4b3640005393f138181fd705b`  
		Last Modified: Wed, 05 Aug 2026 07:58:10 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7088ce33db1852c14a869f4a33fb35e88f762000bd7d729c97922cec1edcd4`  
		Last Modified: Wed, 05 Aug 2026 07:58:10 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0f683c65cc5e822a2d4d16d30b303fd9d54a381568e26dbb75730b596d99c345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944e761cabeeed5b31a1cfc88e9eaf93e704f7499e116df89c4d6532bd8a10ca`

```dockerfile
```

-	Layers:
	-	`sha256:0eeaa2a128ef6c43f003693e852bfc0a00749a7e8bddfcf0957f1c5162138f24`  
		Last Modified: Wed, 05 Aug 2026 07:58:10 GMT  
		Size: 5.2 MB (5213141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3531e43f3d83b9bcbd2f3ed3cbeee43130e1af82584bcacb2563106098c4654c`  
		Last Modified: Wed, 05 Aug 2026 07:58:10 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:01717a60e74bdade268cf8756f5cbee1dfa17358cf916cbd68cb3f25e53c18af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188213437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894d925dcc30f18b474938829fb45dcb4fe992418ccdacb430d9d9da12a240f4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:50:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:50:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:50:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:50:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:50:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:50:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:50:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:50:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:50:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:50:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9facd26fc0fc940c72cae7c5e7902f12d142e5cf04083a8b66572e1f4b45abce`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 88.4 MB (88420357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bf05a4fd1f5e4e9c28c16986cdf6f4072be912bc234fd0f3af21ca4bf12cfa`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 69.9 MB (69945469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc97c242714209e5e2a3ceb47698e65824b3904dd7172550e7a5b71d25938163`  
		Last Modified: Wed, 05 Aug 2026 01:50:52 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758eb65b17ca8dcfd7671dd961e5ad164278e02611618b224eeb66aa75e5af4c`  
		Last Modified: Wed, 05 Aug 2026 01:50:52 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:be72e0caf04d1e7788a65bf4794bf721f6fc430e6dd8abb962f3036f314ac2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083e01e2bbf362b07a3f79ec3c43ceb8ca3b5a727dbd537da42d04f96390a57a`

```dockerfile
```

-	Layers:
	-	`sha256:0c91fed4e8aa682274fe35126a21257fc7001b4752f9ec0023007c4b0a3e1c5d`  
		Last Modified: Tue, 18 Aug 2026 20:39:38 GMT  
		Size: 5.2 MB (5205932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a99444bbb64cd4b740dc0b80046144ab7ce6b12a5701b078ea6af29a14d8abd6`  
		Last Modified: Tue, 18 Aug 2026 20:39:38 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
