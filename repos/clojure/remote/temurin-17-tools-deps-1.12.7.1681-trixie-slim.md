## `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim`

```console
$ docker pull clojure@sha256:006a7ee07cd1e3cd1ddc759da7b1a431ea5907fe653e20c2b910d574ac7c8ec1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:81877381f359f9b614539f807e191f17ac05f8983de3af1838113ad07b115070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244961646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21113644760305a3fd7c65097cfe4a336cb91ce66263350d244d48c2204930dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:09:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:09:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:09:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:09:24 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:09:24 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 18:09:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:09:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:40 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0df923847aa36e99842493cbd2dad06c4d9131a1ebaa0b1f2622134678f2337`  
		Last Modified: Fri, 20 Nov 2026 18:10:00 GMT  
		Size: 146.1 MB (146114275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26541020272051fc3f1e6584dba312f26046df9f15c276996c9129329fac2ad`  
		Last Modified: Fri, 20 Nov 2026 18:09:59 GMT  
		Size: 69.0 MB (68989690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfb26dcd89a7e512de0722ebe1e76ea16551b5a3d10844eeeea0b8f61c166be`  
		Last Modified: Fri, 20 Nov 2026 18:09:56 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dbca18c60868c4063b4b3b7dda591b142dc8d82a1651159f34c35cf4cc0b8a`  
		Last Modified: Fri, 20 Nov 2026 18:09:56 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ec95d1275b5f47e08046c2a209175baca480c89f9c573d2969e28cbafdf4ab98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e5cadbf8c3e40dbb244f6b0d3b6b7d4cb864494d326e4dac9dedce32d0739a`

```dockerfile
```

-	Layers:
	-	`sha256:b577918b26c8f62a893b4482a7e976ef1363a4c472080210250478a672b522ad`  
		Last Modified: Fri, 20 Nov 2026 18:09:56 GMT  
		Size: 5.3 MB (5262067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:349f5f39b057fe65ae86bf6090cdf3cf19803fa3781f4fc6ec8f1ee9ef5884af`  
		Last Modified: Fri, 20 Nov 2026 18:09:56 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e45702ccb6f875ee8014efdd3df8143f02b4b44b322687bfeb83ab119e36b4c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243978507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3351fe9f797923098beb1a361f0a46e7c32113287e70def40bb2c63d65ad5dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:19 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:19 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f9da5ec857a5644fbec76ae0ecee81aa75fcc9e586318174976d3fb5a71d02`  
		Last Modified: Thu, 19 Nov 2026 22:07:59 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a47cfea35d0fc5087a458f0548ef30239ae52026f2b487e6566a84b453de22`  
		Last Modified: Thu, 19 Nov 2026 22:07:57 GMT  
		Size: 68.8 MB (68805762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f192b5ff41db13b4a7771e2ab0f64bc1d70f66c27ad9aec10bea0134c816092f`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926cf2542a88a1ac99c8f47bd89e3b0d57b3f5a8aac2c7767c3031a5292d090b`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85662273d4af8e1f880e6ef36bc712fac8a4baae6de0bd7ccd376243ddc3a715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e819742c38e983b45f19ba1dbc756875c29ce2538133eca0f0e9c840dd4655b`

```dockerfile
```

-	Layers:
	-	`sha256:4b016da2b7a410905cba594452adfdcbbdc3ca1175300a4cbb34f6aabd7b3626`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 5.3 MB (5267820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7aff75bf035e8019d8ba17cb15ba3ad9ab83db989e8da8cbf1ac4f16ba52406`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b863554f82b2e790d522d3dbe15a5703fb242fe37d78e6623a2b851f14ca79c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252973522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fd3acd53d22dbb995109451e20bf2def536d087525e43237eee53fd4076217`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:21:32 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:21:33 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:28:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:28:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:28:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:28:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:28:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8414bae47d7405a7372988f6ef49623a98c61807e361f6a8999b8be82a0cc3`  
		Last Modified: Fri, 20 Nov 2026 19:25:35 GMT  
		Size: 144.9 MB (144892672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bec3516b1808a2bbf0d3ccb2a1bc41675d6c754e99fadd4a0e16cb8e17622d`  
		Last Modified: Fri, 20 Nov 2026 19:29:13 GMT  
		Size: 74.4 MB (74411653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af51a2b3af2d9bd90888acab6612331b9432f4ba14e498d97d08c99d840413a0`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d85425b194ea2e3d40872a56bd8d6ad1144a7cd817ff86f80c9fa34573b3e1`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0f391c241e653abe413c0a10d66f6e3f1c7e5430fdb1434e1a717e41882d33e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759ead24b4b8ade513c50569de3122c8b8cf95e4f0afd00383da8317eb2bbbb8`

```dockerfile
```

-	Layers:
	-	`sha256:3d9a8a6394b38080886f71bd4faa6326155a3176b6688502c09b93d486090ffd`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 5.3 MB (5265192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcfccba751e411d54d9f646c7ffd4a2c6ba83f0265c095d861b3259cf18ba75d`  
		Last Modified: Fri, 20 Nov 2026 19:29:11 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
