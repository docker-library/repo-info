## `clojure:temurin-21-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:ea619ffa1ae2cd1b083e7a97340325947cdb5aec16cb6dba6165ecd030adf952
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:762a20ef863c227307878a554d867404ecb9f8469088eece4ae0b5d9de29f253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.9 MB (284932133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfbea38a35d8196b0f331d9bef64e2be2c884dd873eadad88cdc557a5a1d46db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:04:16 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:04:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:04:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:04:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:04:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:04:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8121939d4b77a0f966a1fef0bcac7c01246b47e1b9660ec63253f288fea14dd`  
		Last Modified: Thu, 29 Oct 2026 20:04:51 GMT  
		Size: 158.4 MB (158409468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4725de8481d814eafd5ac0c39ea5fc57363c0063338c26f4128e9f5f050711a3`  
		Last Modified: Thu, 29 Oct 2026 20:04:50 GMT  
		Size: 78.0 MB (77997070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f2e731f247f8441fc9b69f85abc2edfb0a8486cd21d238890d8fa8fb933c67`  
		Last Modified: Thu, 29 Oct 2026 20:04:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302d9eb15b784be6e10d5dd5cf00f67366e666db3bf3708ee8f3a98542954c31`  
		Last Modified: Thu, 29 Oct 2026 20:04:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bde8297f2507e33b224a0ea979dc6a76a6f16f1f5baf9cb00f154f43575e061c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c8800e7e0fa40b267158bfb623c26949a943efdd34c7921627b05267febf1f8`

```dockerfile
```

-	Layers:
	-	`sha256:af5ac741002ea5cb64c10bce0c211ac1f0a77d769dd83b430e8a786463f94bb3`  
		Last Modified: Thu, 29 Oct 2026 20:04:47 GMT  
		Size: 7.4 MB (7381097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb99f8431c685e66355dfc57e0ac214be9f70c605ed9b2c8d805a4dd6aa600ac`  
		Last Modified: Thu, 29 Oct 2026 20:04:47 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5416a22cfab4fe609a6fbdcb99cfcf6d4ab60f1d8ead8c25b79d82f6de475f9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.1 MB (283090139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e456d1a34165a568eb37fc7b4b227650f7f70f96d06015f159d9fcf5aa5ffc4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:04:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:04:52 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:05:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:05:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafb0d4ea979573b37b2527f90729c4c4a713e157bc4646867c011c5793da94e`  
		Last Modified: Thu, 29 Oct 2026 20:05:32 GMT  
		Size: 156.7 MB (156691644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0be8a4e19b7fbefc1b0ea5a13bf3b8f4d7577ba6a3bba2085e04f0f9e319196`  
		Last Modified: Thu, 29 Oct 2026 20:05:31 GMT  
		Size: 78.0 MB (77992282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:820027bfa6f6804db930b52f8beae196af730498a47c6114d944a7915e58e25c`  
		Last Modified: Thu, 29 Oct 2026 20:05:28 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c43972c45f53bec59c526eaa00be703d86917a29893975cc4ed6d4dfc6efc9`  
		Last Modified: Thu, 29 Oct 2026 20:05:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3ada73ad450f37c85864782bcd3b076e203ad823986c882a4a666410a9dd0e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7403642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:343583dfa27d651547784fc727a0a4ac87233b9363c098a18c6f7eaf08e396bc`

```dockerfile
```

-	Layers:
	-	`sha256:c14dbb2b7588e1ac261740d7e257cd7502c30b8213cad96e3f1a9e1f7b90a642`  
		Last Modified: Thu, 29 Oct 2026 20:05:28 GMT  
		Size: 7.4 MB (7386884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f2be9b3a953436d3b3db12eb3fcbc0a15d6bc58b08746d0a4a3618282539190`  
		Last Modified: Thu, 29 Oct 2026 20:05:28 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6d93866da708b36666ba15e8a75a367ef463555236a4fff11fc3e6aa7baf808a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.8 MB (293763999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3438ab65af5e3bd2b124ac835aaaef891ca46569acfd7c083dca2929076af92a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 19:33:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:33:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:33:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:33:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 19:33:03 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:43:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 19:43:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 19:43:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:43:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:43:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd62d1477bebca3ace751fc4e8b6b753721df1a40d39f3e494d07c626de119f9`  
		Last Modified: Thu, 29 Oct 2026 19:37:39 GMT  
		Size: 157.6 MB (157573286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b280eb626453d5384e91447e2a8dade1eb599a5e291d4622363c2e9ee7ee3141`  
		Last Modified: Thu, 29 Oct 2026 19:43:46 GMT  
		Size: 83.8 MB (83823361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc45be864fa0c11376aa1c78fd276b525fd1ee59c548674e7d1345cbe7886fd`  
		Last Modified: Thu, 29 Oct 2026 19:43:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057130d6058c01bdea0c738b092190f3401f4da6df53921b00cd247d94b7d537`  
		Last Modified: Thu, 29 Oct 2026 19:43:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0a9902928b44d146f4a18588805722855e51b6c931829c347d2a066e6179779e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17346ced73677fe55fb315588eb7c437455683df2ffa0d3cc668b538955fd67`

```dockerfile
```

-	Layers:
	-	`sha256:36291b4a27862ff1d9fdb342ab4a9c387723a3ddce13904abb8fa90fe3103927`  
		Last Modified: Thu, 29 Oct 2026 19:43:44 GMT  
		Size: 7.4 MB (7385075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e8484a7689ab15111751b7da135fae3de383ad4848d28bbc84ce2c50bc012bb`  
		Last Modified: Thu, 29 Oct 2026 19:43:44 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json
