## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:301824dfdd5aded2efd94bf74632ccb112e008a76051a18d3236ba899f82998e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:49d93892a7747064c1ce880c72972b39f47fba5486a2d7dfaad4acd13ed7bd2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170339299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dff9aa58d6147815d4d6402dfa0e5b299c449a1d2a75f6fac7a07770bf3b36c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:49:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:49 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:49 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:51:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:51:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:51:05 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:51:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:51:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:51:07 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:51:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b031d50b5be79c8494ce2ad3594dba0c484e481fefe6233e2e4d82e04d056eb7`  
		Last Modified: Fri, 02 Oct 2026 02:50:24 GMT  
		Size: 94.6 MB (94563470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2929d64b7c7114724ddd648ee9c945870382f8b5c8c33bfd75c9bb4b44e7a926`  
		Last Modified: Fri, 02 Oct 2026 02:51:25 GMT  
		Size: 21.9 MB (21880482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af9f645f9be9b066ca42bdb526f1183e2dadf36e2ed7792f2d5c73227f28109`  
		Last Modified: Fri, 02 Oct 2026 02:51:24 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025a87d994ad40ea892d34bfe34edfd20cebeec7f43780a9c8ac4eed98e24915`  
		Last Modified: Fri, 02 Oct 2026 02:51:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:57a48fb077470129095d63875c662d54a7291d1d25549436f7cdf3b5d6cc9fb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc67db59317096c024e61d22152d812e26541e32d3686d3ba52ddb4ab1f584bc`

```dockerfile
```

-	Layers:
	-	`sha256:a32621b099889605f864650410226caf7e467d2efebf7356bb1e8683dc6a9df6`  
		Last Modified: Fri, 02 Oct 2026 02:51:24 GMT  
		Size: 3.8 MB (3792640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1bc9869b9fd1584312dd0d4a6e9be8d46aacf374047821e3bb1f4f7f7acbc63`  
		Last Modified: Fri, 02 Oct 2026 02:51:24 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e812a4f02e024a39b09f3e67cd19c719266ae82aed9b34921999275fe2ac9dca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170010691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9558721997523dc9f52ac54b5cb78592adcd7acc874dd96a8bcf4341693b0fe2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:49:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:39 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:50:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:50:57 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:50:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:50:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:59 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b0a7dfcd355419ad92b64baeea611bd9204cad43c3bcdad3ae2d5824791127`  
		Last Modified: Fri, 02 Oct 2026 02:51:18 GMT  
		Size: 93.5 MB (93543594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c17a8ab8329e4a9426fb3c0c1d65da2aa714d7b8479f108094a4c15faa625c`  
		Last Modified: Fri, 02 Oct 2026 02:51:17 GMT  
		Size: 22.2 MB (22202634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d5086c2e18cac7bb142c62da63050481ac005d8678772107019ce78a3b0a79`  
		Last Modified: Fri, 02 Oct 2026 02:51:16 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17338da98ac6c5ae39f0e58d78b58b4c762f6f9af933c1a6ab549a9f893897f2`  
		Last Modified: Fri, 02 Oct 2026 02:51:16 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:15882000ca61221c129bb667e3e8af756239b35966dbe637100f98a67fd8d592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c739855289ad1dc74b447be3e9e986a22e7ad1442687c34201575d4622e3951a`

```dockerfile
```

-	Layers:
	-	`sha256:e44dd4beb1b4d49ef9ee9f4622be5a50d850d3d2be1920cd48278d47c51d8e64`  
		Last Modified: Fri, 02 Oct 2026 02:51:16 GMT  
		Size: 3.8 MB (3792877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:046fe1332c059309f8012501b469786685d8675a53673cfc0c43cbfd42b2e71e`  
		Last Modified: Fri, 02 Oct 2026 02:51:16 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e585f7937ea5f4a5d9ca7415d810aabe7d2dd7c58425d538df711ab2dde13d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170016433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d53733bd5ae8bb66b1fd767ca626d9395dbc43bce61742d596d4876e4b0d444`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:45:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:45:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:45:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:45:45 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:45:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:45:47 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:49:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:49:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:49:26 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:49:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:49:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:49:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:49:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88cdcd646a285810a3b5f823b032cf404fabed96d1486d706047a978af6d8ff`  
		Last Modified: Tue, 06 Oct 2026 10:50:28 GMT  
		Size: 93.4 MB (93350853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b267ba6aa0c5d8b995a3fe8de5f22b2daca93523b36c0f6029a6250adf3a1c6`  
		Last Modified: Tue, 06 Oct 2026 10:50:27 GMT  
		Size: 18.9 MB (18942823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d86cd1b24addec791e88d3941c8b4580b3f94b9b031b7098b1f2cbc54a75a50`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf324012fd71e3ae0ca4fc36d4b7b3026fb53ca7ed8167b947343c68f95f5bd`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2240708bf6ad28df74363bbba2267c747e15cc35842d91ffe33ee41449d328c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8666ba435e2bd54138b39836576723862501fbdb67802c742ddd8ba2a35572ce`

```dockerfile
```

-	Layers:
	-	`sha256:c5af59a8f3f054e46f98df52947b44a9e2600ba24da255b12af7c3fa7f96e886`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 3.8 MB (3777574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84fb1cf7b2e972a02ee8a3dd75deb8548bb43258c054084e5f26b2bbe303a6c2`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
