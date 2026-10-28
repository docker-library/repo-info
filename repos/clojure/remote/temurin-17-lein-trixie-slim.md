## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:e1ff55973cedaf0019df8c20a503eed1057b1d5b96c1e98786cfd6d15bfa61af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d01159b0b2640c70fc5fd81e8edbc5aa1b905e2613b429c663fe9a9c3cd42459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196938199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8527db93b532723f300ebdacad3d0dca38543374517b303e847ffa73119af6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:11:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:45 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:11:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:11:45 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:13:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:13:12 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:13:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:13:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ccfd1907e99178a222e533cc135304ff8b581bc3b81445657049a977d1aed8d`  
		Last Modified: Wed, 28 Oct 2026 02:13:32 GMT  
		Size: 145.8 MB (145825460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5287451587f8b730b69b8edb76816c96d1a6976539e89e9bf4e3e82e086ec9a`  
		Last Modified: Wed, 28 Oct 2026 02:13:29 GMT  
		Size: 16.7 MB (16741870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0f69dd2b9c081c59c4bb44cc89d50cda82b087dd4226de2d0e3ee32ab6c189`  
		Last Modified: Wed, 28 Oct 2026 02:13:29 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81dbde925178ed98bc28aaabd9515688a4646312f8db60474d213e98d6d3a3e`  
		Last Modified: Wed, 28 Oct 2026 02:13:28 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e00a015dfaf453401ce5a23044c4d330fec19daf71685eecaa372d96325da5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7453914ee5260c7d6b739cb4ab36b7c722a46d7db8e97809e1eb4e670e7fcb10`

```dockerfile
```

-	Layers:
	-	`sha256:7ef3ae0af6d13cf1d9b20643bcf1ae3080ff7205bc9818273ccb2c96d5645b04`  
		Last Modified: Wed, 28 Oct 2026 02:13:29 GMT  
		Size: 2.4 MB (2371754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d8a0d1917bb9aecb71e69ec1c85f74423b5feb83914b6db10de8efbb1000380`  
		Last Modified: Wed, 28 Oct 2026 02:13:28 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0e9ac9260795e4734180625a751cd9c12c2c7964b8e7c5485ff786579cec1c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196095091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a63fc90dad2605121bf1e87602640e3056d91818834234c7961bf1b0052bcf5d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:18:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:18:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:18:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:18:47 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:18:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:18:47 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:20:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:20:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:20:12 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:20:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:20:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:20:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:20:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21545be812cf7b8fcd1e4a745b2186f7be3e6737aefaa5d685f84781920c738d`  
		Last Modified: Wed, 28 Oct 2026 02:20:34 GMT  
		Size: 144.6 MB (144648276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587d44b38f0b45ab4f4e923be9674459a1a79b61f19d74594ec0966d7976050a`  
		Last Modified: Wed, 28 Oct 2026 02:20:32 GMT  
		Size: 16.7 MB (16717670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086c27d62a5695f630fbea3466b1e0df39c53a7780b3fb3ba90f5a1dbe5ef2bf`  
		Last Modified: Wed, 28 Oct 2026 02:20:31 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c019c24e472c8341911e687498d5bec6c468544d7de38ac2f2c1a3c498f6c4`  
		Last Modified: Wed, 28 Oct 2026 02:20:31 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f239ef983e769a761caa6d4c1c72f32b42c6b7c9adfd77547436c6e948546b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea1897b661d8c07b08a2b47177dba13bf534b951c621eeae001aaae2bce9bf2e`

```dockerfile
```

-	Layers:
	-	`sha256:7598f79cb98cfd1ea08d852142dafeeeadff08f9bcc9acb665687584ef27ec5b`  
		Last Modified: Wed, 28 Oct 2026 02:20:31 GMT  
		Size: 2.4 MB (2371364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62124b89ca9c2a504e8c1a192457f25af178f97d9a0ad5f69c7d53b326ea9738`  
		Last Modified: Wed, 28 Oct 2026 02:20:31 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:daa56b81b3b53fb918cb31f6684c5ad4bd195a1d168113c86e16c63896324084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200632309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12d1c6a989c387df8efb25b4f9165c75a8814975dc8c1800ab99adb70eabd1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:53:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:53:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:53:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:53:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 09:53:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 09:53:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:57:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 09:57:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 09:57:07 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 09:57:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 09:57:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 09:57:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 09:57:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e0613b8827b8781fe63889f9946250e2cfe636e1bab7d803074604f0688e27`  
		Last Modified: Wed, 28 Oct 2026 09:57:51 GMT  
		Size: 145.7 MB (145671601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c650382abade3423be35135b21d1857c0490dcbf0b1ec6ea0bd384914de2bd9`  
		Last Modified: Wed, 28 Oct 2026 09:57:48 GMT  
		Size: 16.8 MB (16778819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b527588c2e6daf3988ebfe0997aca33c9b362d3db96ea9b62e0ea5cf9f4fe90`  
		Last Modified: Wed, 28 Oct 2026 09:57:48 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3725b1aab5d6af5410d1af53d31999042eab915e1d5c1de42a6274874f2935`  
		Last Modified: Wed, 28 Oct 2026 09:57:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:988d3f4138c525dc4cd14a78edd5c6e132fbe506b058a5423511f788af6bfe40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5ee3a375113e563076edf62aa7dcf37625b68fc0fad0c6c3ef0d04888a7410`

```dockerfile
```

-	Layers:
	-	`sha256:ebe155bd7886f7a18b7da4246eee243eddd78a62b3f1d313f31d1b718c9fcff2`  
		Last Modified: Wed, 28 Oct 2026 09:57:47 GMT  
		Size: 2.4 MB (2372734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68df55a31cbe9c8bb1f57800753798fc637ff55c32d30bcf9922e47b828e182`  
		Last Modified: Wed, 28 Oct 2026 09:57:47 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
