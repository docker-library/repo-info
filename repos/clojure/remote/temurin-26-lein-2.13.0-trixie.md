## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:9b879d5c55be51fb769657421a36e235177613132be46f78e25e0e94dd280070
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
$ docker pull clojure@sha256:cb7bcd6c35535a6b0232cade7430c4c52d7ab861b76f2df838e38f873a0c67a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170003646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a74e1516a2dc3c93d7795cc6e681f6a9665406f0fafd83f844855535f1ce637`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:48:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:48:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:48:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:48:50 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:48:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:48:51 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:51:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:51:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:51:26 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:51:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:51:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:51:30 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:51:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97818a0dc9b01dc3b4304e7d1140df380e6f733d7e82c2323a42ed56ff550f7`  
		Last Modified: Sat, 26 Sep 2026 05:52:07 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd1fd305ea95489c4d4c3394244acfb1998ac37279a177ff9bafa45bfd68610`  
		Last Modified: Sat, 26 Sep 2026 05:52:06 GMT  
		Size: 18.9 MB (18942086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cd574e9a9c15cb0acde3bd8eb88b467a0f5feffa5458610cbc76408291375e`  
		Last Modified: Sat, 26 Sep 2026 05:52:05 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e84f1cc64ba15283e0d69d7b050e22ac32fe27e775ce17ad95e266eeaff7634`  
		Last Modified: Sat, 26 Sep 2026 05:52:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:679a42a8c43d5464b18607323263eb3d96018da16404e8d4b0f48b301ff69740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6e265cca50f7212014263be802a7902dd84665851205315827278f0fcfe14e`

```dockerfile
```

-	Layers:
	-	`sha256:bef88c206c42ef08f1ea53b84092536ed19fdf807cab93ead33bc54f281358cd`  
		Last Modified: Sat, 26 Sep 2026 05:52:05 GMT  
		Size: 3.8 MB (3777574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c60b82ed6d4656aa811119d99fbec37f3284cae930747ec73ea239b765eee2fe`  
		Last Modified: Sat, 26 Sep 2026 05:52:04 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
