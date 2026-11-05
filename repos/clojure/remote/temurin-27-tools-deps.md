## `clojure:temurin-27-tools-deps`

```console
$ docker pull clojure@sha256:e0427a1cc6278337b9a3204a9ad25410a458e991b44d6b93189e74ae0406d17d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:2b0ee5d68de7f47fd1a890fbb63e357e87a94bc158d6e2558c8444045e7f4e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220148285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d72c6ae84b6f34f57056b102fc3df3a606d891dddb80de0c5773d69eb9249bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:11:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:11:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:12:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:12:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79a7327f462e2a7d9d8739a611685ead0b2a2523ce6d11227e57b7fc3de0bd8`  
		Last Modified: Thu, 05 Nov 2026 08:12:21 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c116fce125a1495a3f23dab1461806a9a832915ade02ac799ff1f639dce2daa`  
		Last Modified: Thu, 05 Nov 2026 08:12:21 GMT  
		Size: 78.0 MB (77998273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7387e78af4eca3c23f66a0d0a3b517ac174019cf472941256302e7638d99cca`  
		Last Modified: Thu, 05 Nov 2026 08:12:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c06904f9565445870a5935aa77a556216b8145e43bbe5acb70b196231ed8c7`  
		Last Modified: Thu, 05 Nov 2026 08:12:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:c0472b3d628c447161ceae386eb342076f58d14228595581fc89dad76b94d7ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa337744dc6993ea2a1dcb192ab6e0b3d01000697d6b7cb32ec8846e9ddc8ce`

```dockerfile
```

-	Layers:
	-	`sha256:e52533d31065166d2e6c478dcafef58f9d43b873fc68543c4babeaba341a30cb`  
		Last Modified: Thu, 05 Nov 2026 08:12:18 GMT  
		Size: 7.3 MB (7342949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed3d8cc79fd8a8ab784ddb9b9163508dd75f4e221e4dc0330df795cf03cc8a8`  
		Last Modified: Thu, 05 Nov 2026 08:12:18 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0136840525a6aa1047decd74a4a87dc0eb6e3d357b256fb21ec22a34e5f8e7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219045822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fec5fa1758447e41190ecaa4c0b722bb063074253b9081c749e72a636ce857`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:21:22 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:21:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:21:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718dc3d936251172cf0c2aecac46cdf9d3d7bba064e1cc1d5f033cc45f7a19a9`  
		Last Modified: Thu, 05 Nov 2026 08:21:58 GMT  
		Size: 92.6 MB (92633134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314959e813c7dab2f752b6fb2ed3f41f0503d49baa513b8fb0c0d554ce25e8c8`  
		Last Modified: Thu, 05 Nov 2026 08:21:58 GMT  
		Size: 78.0 MB (77999191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329da4629cf4e9fb8038c16f35e525f0cff987279cc4774c2741724b7a1024f`  
		Last Modified: Thu, 05 Nov 2026 08:21:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf5ea168278eb741249d90c607157aca07c9f211b87916d29aa3a170077ff1f`  
		Last Modified: Thu, 05 Nov 2026 08:21:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:23c61bc6712f95a4cbcd9ac31d7f3fe43dcb297637d369a8dff21b10f7ea5427
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02189207024df07a7afc54e8e84d617374b071a92c4bd9a15d8a06d20e4fb3cc`

```dockerfile
```

-	Layers:
	-	`sha256:9a0742881ff7d676dc4791d8d2601ecf01334b06af0c24cde4e919a9b95ca9d6`  
		Last Modified: Thu, 05 Nov 2026 08:21:55 GMT  
		Size: 7.3 MB (7348733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f2f112d67704252290f22297f05fc7441f8b2088b1d207733d084f154c8606f`  
		Last Modified: Thu, 05 Nov 2026 08:21:55 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:44e96e86158e9f705379d1ff38fce155e2de6cc99ff2ec6ef33173857d54ee9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.4 MB (228449242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c112f67e59ca26b80caa238a7f7d6c46939d37e4cf3e4251001ec345c0c4d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 16:13:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:13:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:13:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:13:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:13:37 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:24:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:24:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 16:24:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:24:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:24:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c209672cd4133c67d49fb5ce04bea829f67cc51946bcd182eaa8da914cd228a`  
		Last Modified: Thu, 05 Nov 2026 16:18:37 GMT  
		Size: 92.3 MB (92255778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95bdcc66b163d92562652e4b70e6e3d17edf16a3bd4de45c3b9cc5353398fd06`  
		Last Modified: Thu, 05 Nov 2026 16:25:43 GMT  
		Size: 83.8 MB (83823799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d73444d14dbca837e96d3380040d23ec409d75163da6bb2d55f86d29e1af06`  
		Last Modified: Thu, 05 Nov 2026 16:25:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dee2cf15c518fa5049026ecb71a252a2da4389bcccdbc2755aa7dab52ec8c4e`  
		Last Modified: Thu, 05 Nov 2026 16:25:41 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:660a7115f3538b9e4114da16dc0de5393c9bf847657c77031cb1cafe9400942d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7348778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9120379c92d64bd7aa521f9e0445610b8eecaf91f5098b9eb61d273a519ead8c`

```dockerfile
```

-	Layers:
	-	`sha256:0c6552a17895d6e3d7e91c603eb2c79a3989bb4aebc3711e5046d58771ff7187`  
		Last Modified: Thu, 05 Nov 2026 16:25:41 GMT  
		Size: 7.3 MB (7332109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:988b790a31fb8cd190fcf704df6d2cb1603a3e817aa22084083139e5798b6846`  
		Last Modified: Thu, 05 Nov 2026 16:25:40 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
