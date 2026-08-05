## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:ab6f8188562714789e2116deeac5acf6813a7e4563e047cc41e95bb7c8d8e443
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

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d492391ff159be8bc754dade9032b76529ec5da0637f0c38ac8b751f23e0a69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191321186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4e4bfeb6e3c6d24942c24efe152ff8fd545f1009682a17a7c228193889bf88`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:25:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:25:12 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:25:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:25:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:25:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:25:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2353c8713ca10c6c6aa4326237d3685d7b731f2ced214c9e8143be09215f5f2f`  
		Last Modified: Wed, 05 Aug 2026 01:25:50 GMT  
		Size: 92.6 MB (92574590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9cad7cc6b4bfd40290528dcf7500bdb671f83608ed0f4eb3c38e10815eb52f6`  
		Last Modified: Wed, 05 Aug 2026 01:25:50 GMT  
		Size: 69.0 MB (68964791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c73a6141cbd1ba7627ca3189f51bcfcad2463ecddc0e6ece5a25b284b36d2ab`  
		Last Modified: Wed, 05 Aug 2026 01:25:47 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799ee3208077c5b6eef86e7fcd2a7c2249b67d3a20966ce51d655d0cd78afbd5`  
		Last Modified: Wed, 05 Aug 2026 01:25:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c69c210a171d172004b03b72074f5f62a51f425df829ba671c1a5532ca049ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba95a6ab371f1fe6cd0613c00484d2c6241d8bebd776a64c9dc9b5efa37f86ec`

```dockerfile
```

-	Layers:
	-	`sha256:54e3a0ebc1b77a765eacf5865e3d98278b53b11423e364ba00ac14418acaf14b`  
		Last Modified: Wed, 05 Aug 2026 01:25:47 GMT  
		Size: 5.2 MB (5225446 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfde703c038d3400690cfacd50fe0a28fd2009d4437e55f2f7485b6a42dca617`  
		Last Modified: Wed, 05 Aug 2026 01:25:47 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1859378783f95e840b0c87f205f8cfb6777812a88a58bd9c3ac63b4831ba5fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190473120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e079d4c1b52ad1a9471612f065dc7ead954c5cd218f01caa258f7dde12c6c2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:31:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:31:28 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:31:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:31:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:31:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:31:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:31:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f8b6cc9bdb06038e5ad85ea42b5254e81ddf166be14fed72ead6c65c64dcfb1`  
		Last Modified: Wed, 05 Aug 2026 01:32:08 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812f67991a27119f120b898c79f6cbc6617f689f7c62b1cfaf5e74e3dd14529b`  
		Last Modified: Wed, 05 Aug 2026 01:32:08 GMT  
		Size: 68.8 MB (68786226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb2a302b4f91cb0506a8b8df656052f2eb31d4a651d86502604e3e9ae11beab`  
		Last Modified: Wed, 05 Aug 2026 01:32:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a6fbed4d96750fc5fa3d10abbccd28c9575a12716e610b0d5473e6725d8577`  
		Last Modified: Wed, 05 Aug 2026 01:32:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:05cbc2250870abd0cb213097a7f543d18706a63a480ed83c64e90f88aa89a993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386a45ad06dc5560c3cbf9495807a27ec27d967ace990d0df4742ae9c5eb895a`

```dockerfile
```

-	Layers:
	-	`sha256:f776fd80caadfd97c77c70fac98b446de7497cf53e7143e7c4eff7f614b5e303`  
		Last Modified: Wed, 05 Aug 2026 01:32:06 GMT  
		Size: 5.2 MB (5231228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d3d32168556346fc64064999391a99e6850168bba0f865f32bba2b9b2ecfc76`  
		Last Modified: Wed, 05 Aug 2026 01:32:05 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

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

### `clojure:tools-deps-trixie-slim` - unknown; unknown

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

### `clojure:tools-deps-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:11aa0fbf00405488742e27929f375d187765de107a8481bb81f0db38f495d26d
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

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4d66e8946f8934614e397758dd2af872ba92e453d8225238495ef7b0b1dac0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e1d2a1420182b5ef11748c1985a7e7d2a3eedb175648f75d0e37ecb2f570cd`

```dockerfile
```

-	Layers:
	-	`sha256:2b4ba8d4dc5d49ec433cc8bddd195bb8baef1d65c231af570b58de672a67285d`  
		Last Modified: Wed, 05 Aug 2026 01:50:52 GMT  
		Size: 5.2 MB (5205932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0e58a452e45b8a688fce4ed1cf67b640b1add66bfe22946ad031849bc0cbf5ce`  
		Last Modified: Wed, 05 Aug 2026 01:50:52 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
