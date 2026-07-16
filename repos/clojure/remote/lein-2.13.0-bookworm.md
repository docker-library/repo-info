## `clojure:lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:377c5bd363643860c7e8bcffaecd7a813bef2ad98934e8de4c1fa69315d64815
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

### `clojure:lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:64d4a4613bc039adee011435edd964343b2fe5f7f1949db3a492d0399b477861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165695855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6a25f6f40461fdfa01820a7307a072a1b500c1f378712236a01928bdd91b0e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:23:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:23:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:23:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:23:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:23:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:23:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:24:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:24:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:24:24 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:24:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:34:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:36 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8197b913c6db21fc1ba1efc083e01c89e2dea90e1f4060806db3195ff74917c3`  
		Last Modified: Thu, 16 Jul 2026 01:25:00 GMT  
		Size: 92.6 MB (92574583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f656c31511f607dba3c238b124c862254c9a1b681fbe126af81db29e4b4b882d`  
		Last Modified: Thu, 16 Jul 2026 01:24:57 GMT  
		Size: 20.1 MB (20108259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060f736e873c064a93cd4bcc161f9e4e16af301d69e1ec0e26a85f47219c4ad7`  
		Last Modified: Thu, 16 Jul 2026 01:24:56 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0840fc575033b441ccd497eaadb6ca7dee1da8afea296192162845afc8f0e3dc`  
		Last Modified: Thu, 16 Jul 2026 01:34:43 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d57aa827b7ab9e1115fbdcd3a5440735cc041cfd7592527c2e8ae212b3176c0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb89170bd1991cfa6459c7195864caf617dbc43e34cae1d050efff50a02aa2f`

```dockerfile
```

-	Layers:
	-	`sha256:b9879712db704f9c28bba48dfd5d696f10e8fc92ce3f5efe1885630599a1ffa6`  
		Last Modified: Thu, 16 Jul 2026 01:34:44 GMT  
		Size: 4.3 MB (4253346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855a268c71097cdafda8d40b2a320cba03f22d47c887f0b02b398ae637cc5977`  
		Last Modified: Thu, 16 Jul 2026 01:34:43 GMT  
		Size: 18.7 KB (18675 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e46835d04388b5f58f9c0c919f432242077aa810c0cc1cea939023642197410a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164392587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66994b63001f6f8cf89bae78fb9878a8b7d2b13e1e5bc1dc23b3faf8718ac200`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:30:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:18 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:30 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22cfc77ac4d950cd2af1442fb69d5ae6734c3172798019ece063c70003e4b343`  
		Last Modified: Thu, 16 Jul 2026 01:31:52 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62fc411d31dccc5863dcd84d2ccc1e9bd409463a2bc6e8b106bfffede74e4b2`  
		Last Modified: Thu, 16 Jul 2026 01:31:50 GMT  
		Size: 20.0 MB (19950970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79550afd7a67cc118a8c305fa5edce1c6e4410a1401256b04c525fcef5d92495`  
		Last Modified: Thu, 16 Jul 2026 01:31:50 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c4ed0a97039ac6ffefc049f48c3a09248cadd4382990993a3e100e497ee980`  
		Last Modified: Thu, 16 Jul 2026 01:31:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4c4e63816fad486bd77e107721841869edcec085ad898f79d0637eaca6cfa78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff46a0dfc8d4e690ee757fa8e5620d165e21a78ef61d4465a1442dc203a36ea`

```dockerfile
```

-	Layers:
	-	`sha256:9e2bd17750b60ee90dc3c16ef856f5e2afa3e9a7cab48c875f336e7086f2b95c`  
		Last Modified: Thu, 16 Jul 2026 01:31:50 GMT  
		Size: 4.3 MB (4253030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f02c5a96f44f3d63bc4afcf285f7848af7d826092c1c8bdb50122cd0ccf788d4`  
		Last Modified: Thu, 16 Jul 2026 01:31:49 GMT  
		Size: 19.8 KB (19821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:df08ba2e8cdc95f9bc7a257fdd22ae8ecf272fdedaa4a2a0683139fa0889b78d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169103386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc6cc2b0b1778695f3566bd5833e18f85188a8bf0c631c0259c1aa321be6a2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:18:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:18:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:18:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:18:13 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:18:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:18:13 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:20:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:20:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:20:46 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:20:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:57:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:57:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:57:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b371f30843a9fad331e17602fa85a4ad12c932ddff8fd6742e8a5da648b9a92`  
		Last Modified: Thu, 16 Jul 2026 02:22:09 GMT  
		Size: 91.9 MB (91914004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5675d34093234470e7dc95c8fc13e1c15f024704b00638bb3797ddc5803c949c`  
		Last Modified: Thu, 16 Jul 2026 02:22:06 GMT  
		Size: 20.3 MB (20331901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267336b5ba06a4c6e7931681bdf3ef9a02f59cb4091229351fad871dc2d1bcdc`  
		Last Modified: Thu, 16 Jul 2026 02:22:05 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970561f5cceb35fca6b265abb0411fed50f1ef564543d6a4cdead843593c4610`  
		Last Modified: Thu, 16 Jul 2026 02:57:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:598c14345a27c61b93b5854b9f347214cd982bbb7fa47c9cc14d5597a375d0f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4258264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acec30ff2281547b6f7db037223bea6efe94972e82e0041ac340ec792d31dce9`

```dockerfile
```

-	Layers:
	-	`sha256:d758b6998364e8cf45b11b84f2a6699f4bafae35a490b13c42f6f804ffe8e615`  
		Last Modified: Thu, 16 Jul 2026 02:57:51 GMT  
		Size: 4.2 MB (4238555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3eeae2065f3e7c0e353b3640603c40bcb3580459a011c732b7d36ee3e990c2bb`  
		Last Modified: Thu, 16 Jul 2026 02:57:51 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:a346adb31f1b86d5fb31e38c03e514f52422ada307c2541f4ddc5f497b5930d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159863525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898e4a1b6206e7e8f826d79c3fedaa75ddc06af05a1b6767a2e000a9324a45de`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:41:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:41:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:41:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:41:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:41:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:41:07 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:42:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:42:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:42:30 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:42:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:53:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:53:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:53:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ea98e0931c23ec30a174ba433d8e0900a725b70228c99499d15c7b14448b17`  
		Last Modified: Thu, 16 Jul 2026 01:43:14 GMT  
		Size: 88.4 MB (88420318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe6dec88b924603c65301d2ac7587c722d797b69d9fb74ef679549ee96c076d`  
		Last Modified: Thu, 16 Jul 2026 01:43:12 GMT  
		Size: 19.8 MB (19770289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f95c7438f4147d06a96778984d76bb36e755d5c3f3b51e2703e6d8f1ae357c`  
		Last Modified: Thu, 16 Jul 2026 01:43:12 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46f04c40c40040d9cc03ff6598c84793a330f049a56ba6a82d093c186bb7680`  
		Last Modified: Thu, 16 Jul 2026 01:53:21 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d3882e1a823a6e09cea405f57049104b8ad862ff0bebf2b2da8263523c0948ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4249351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510877901196918c5c1cbbbe529c7bf0cd48678c2a0875f5b5e2cd1a8af9320d`

```dockerfile
```

-	Layers:
	-	`sha256:007a3c35ebbd3ef27138be9244ca842e77b630192243346b1a8f89b62803e6f4`  
		Last Modified: Thu, 16 Jul 2026 01:53:21 GMT  
		Size: 4.2 MB (4229722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84f31b9d5e4bbf9d77bc019983c98aa8f3541dbdebdd0348eb052e7c5074539e`  
		Last Modified: Thu, 16 Jul 2026 01:53:21 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json
