## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:76ac4d18bd68a4b08c7597dcca571c79ace82822f6ae81d19266c517cb3a717d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:10c88d4ef0e61376d519575ba870cd65800e2e5c0dcbad0d6c350a3195896633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231222966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e205266791c064e85e539a66fa2549fa9c623ded75099d33648399f1b52531`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:40:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:40:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:40:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:40:26 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:40:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:40:26 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:41:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:41:40 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:41:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:41:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561c9a7cc1af22a3edab4363b86de0263c10ed8a12b37c606b36f04a1b3d0422`  
		Last Modified: Tue, 10 Nov 2026 00:42:01 GMT  
		Size: 158.4 MB (158409431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed103b39df6b0f181d61b84aa28860b704439d51424d09151ae67b3baf05203`  
		Last Modified: Tue, 10 Nov 2026 00:41:58 GMT  
		Size: 18.9 MB (18884888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5297ee6125a4bf29765a813b524cc1cc16cbb251a6fb4715114c1050ca6e7559`  
		Last Modified: Tue, 10 Nov 2026 00:41:57 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b5ef61181c182270aeb940f95d981872aacc3ba0d5b489a38b4939f5e8c04f`  
		Last Modified: Tue, 10 Nov 2026 00:41:57 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:db2c290725ddb4751400fd61bd7df5eac195f7e76347b3c8dec865fe371859cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1876e46725fba004185384357d6e8aa37f6b948c34b48fbd6f35b007b4eeb076`

```dockerfile
```

-	Layers:
	-	`sha256:68985304f39c85a78514ebb3050493c5931447742ecf471a0fd8505c85156b88`  
		Last Modified: Tue, 10 Nov 2026 00:41:57 GMT  
		Size: 3.8 MB (3828314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b73d86f0cb406f315871eaab775ce4cec915d65866e8766a36e78140765d7faa`  
		Last Modified: Tue, 10 Nov 2026 00:41:57 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6b632ea9797f75e195cc02766f8d39ce7320d50c451c480bac0f945fda5a4168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229829369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10480e42277251abbb2ac181b8ac916e97aa552de35134041f6e6c29dc748f3e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:39:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:39:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:39:41 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:40:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:40:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:40:59 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:41:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:41:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7e2936a056c6e46d110cbbc20dd867439a5d1f2b1b58cdfee3de91e7f97e43`  
		Last Modified: Tue, 10 Nov 2026 00:41:21 GMT  
		Size: 156.7 MB (156691644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b93ca506eb04664d9fe42fdeec2570803ba2b8362b39ca340f8ddce3123b7c`  
		Last Modified: Tue, 10 Nov 2026 00:41:18 GMT  
		Size: 18.8 MB (18842984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b34f91c946cb0975d7fa32f0e3fd2c4c5d4636e10dc10656028030590f77a39`  
		Last Modified: Tue, 10 Nov 2026 00:41:18 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb154563dea8b74ab87526517209d0d1729f95d3c991bd07dc809c23cfb9ad96`  
		Last Modified: Tue, 10 Nov 2026 00:41:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4deb3d4acea0b5b54faa3eb3bea0e88b452c7bd07a0ecf9b2d2fe3a723659081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995d68e68f9f82eb93ca44f78b0e9fb9bf6e7064284c484623f114d7b5810f7e`

```dockerfile
```

-	Layers:
	-	`sha256:78e4203fa4fd326ac38caee53b7ef40e068c9407bce1a3b944ff9e6d32fa8ea6`  
		Last Modified: Tue, 10 Nov 2026 00:41:18 GMT  
		Size: 3.8 MB (3828554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39fd4040b4016b3c96f5a109ab2efb4fdd6960c60ad50450c85e7be70d59a691`  
		Last Modified: Tue, 10 Nov 2026 00:41:17 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ca0275136a430f6c803003904aaa4c6568de4199c537379d76081d8b6ea96d1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234254169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e17c9a2d4172f40d1e4ec10d1f4b4f657708d9464f8ac6e1bd1abc30b3a30d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:52:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:52:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:52:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:52:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:52:05 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:56:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:56:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:56:19 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:56:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:40:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:40:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:40:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77324a11848d877bac9af5f0ca39315d93ee1d02d9b33c1cea449a77e36efcf`  
		Last Modified: Thu, 05 Nov 2026 15:57:04 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097ee97bbca2a67c6dd07bdf318732c038b92bad51b6ce6e96f5f324d736e8aa`  
		Last Modified: Thu, 05 Nov 2026 15:57:01 GMT  
		Size: 18.9 MB (18939187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3d7077a930754818bbc4eba4e4e61d5aa4ee946677aefa4e8cfaa9e7548985`  
		Last Modified: Thu, 05 Nov 2026 15:57:01 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adccb20e11557ff21cfe8fc5e26a972f8f3ba1568e52b6194d8469cbbb018de`  
		Last Modified: Tue, 10 Nov 2026 02:40:27 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c41ab342ef869fa210f9a1252297c8752b93c6f075d21bcd2bf71c84ace430ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6ee1c44b92ea48da81cf68fda30fe006772ef6df77ba17222970766372315c`

```dockerfile
```

-	Layers:
	-	`sha256:022c9e574ebc29c325d3c59479e56de7bc2acac83b3e79b2f20f0aeb8eb06252`  
		Last Modified: Tue, 10 Nov 2026 02:40:27 GMT  
		Size: 3.8 MB (3828066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6400012c388a5eab42953cde6554e28aba79f3ab0e06754e67d29ec68e827ed1`  
		Last Modified: Tue, 10 Nov 2026 02:40:27 GMT  
		Size: 16.8 KB (16807 bytes)  
		MIME: application/vnd.in-toto+json
