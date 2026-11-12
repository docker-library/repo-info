## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:06be7fa0453a33fd1ddb6d846001fb9eaf4beddaadd9a76a776592d7a93eeb9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:671c833b3823b3bd1e0744ce822e37670b35bf862fcffb469b566888c1649b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219261639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8390706cc740360f8491f7cfca4bca8b6e3282ae5bf97635bb9b074d322b933f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:47:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:47:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:47:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:47:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:47:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:47:32 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:48:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:48:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:48:42 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:48:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:48:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:48:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:48:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34babeff98d504753cf4363d911520b7522f32b3df4e5dd444c2b3eff1d1b3fd`  
		Last Modified: Thu, 12 Nov 2026 00:49:11 GMT  
		Size: 146.1 MB (146086198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169d5db4e1ba84ecead8985244acac3dcbc4553da030613fd8128f82151b291d`  
		Last Modified: Thu, 12 Nov 2026 00:49:03 GMT  
		Size: 20.1 MB (20132826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5cfa51352966636d06228441966cfd2b404373199efcbb2c8581b347184487`  
		Last Modified: Thu, 12 Nov 2026 00:49:01 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc58424371a4e5512e14c00f9ca6f9ab6bce70afe86aba1f95b86e08bbd46af`  
		Last Modified: Thu, 12 Nov 2026 00:49:01 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:36c6d16242ac8502c74861e586ed5c26be6af8d8bd1dbc090cf9cdff3ee2e13f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43332f135ff511a2843cba7e1e63d3c4f9457b759f9074a53b60e133689f4bd`

```dockerfile
```

-	Layers:
	-	`sha256:5ead0cd42941eb13b4c84544b2930fa73c75db5867d41801d17da38c617b1709`  
		Last Modified: Thu, 12 Nov 2026 00:49:01 GMT  
		Size: 4.3 MB (4287996 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf487593ea274347d7017d6f5a710ec38a7cc0a5b83f664e98ca046118f64d9a`  
		Last Modified: Thu, 12 Nov 2026 00:49:00 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:212c9dfc70e49d7b17981b0caceda355593af39274f02fee9c5d257bdc21e6aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217852832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36b0c11273d5f3d6ada36a4306e3a959e0bda761caf0ae4150dc39203d6f12b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:02:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:02:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:02:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:02:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:02:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:02:45 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:03:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:03:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:03:58 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2af348dd61183253daeef93ba1fa909cc38ca51b735008b32c11b2a4c4dc85`  
		Last Modified: Thu, 12 Nov 2026 01:04:21 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b24b0a0aac11710b7887d010c100481096bd123d41ebd00cb09652f1952226`  
		Last Modified: Thu, 12 Nov 2026 01:04:19 GMT  
		Size: 20.0 MB (19967062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e1c4d61f36783ec9c3bb5994b5eb28925cc985033c19e5ea6b15d95455fe10`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a828711d16eeb942e1626bf41cd0a651661f462e05209177b072d7a95c11b7`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:294f5052d2872519f61db8584267421b7836558c273c5c5bd6c799f1d1dcaaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3eededbe5fc533fdc6d8f1006e068c435139dc78cdbb8177ba8a5bf9d6ddf`

```dockerfile
```

-	Layers:
	-	`sha256:80019328a65eced2357dad74393b254e5e9897f6c88ee59d7e410b3fd090070f`  
		Last Modified: Thu, 12 Nov 2026 01:04:18 GMT  
		Size: 4.3 MB (4287611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5bb345267899bb88de8618dfdf12ceb60899441296180b6a966dc0b3fe4883f`  
		Last Modified: Thu, 12 Nov 2026 01:04:17 GMT  
		Size: 17.9 KB (17858 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1bda828e42ecc47d176400e8c008f3f04b6d703b055820f334ec664f3d8746bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222102514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305a62fbac99a0e0a226b0cabfb51100a47a12231ae0b25efb138efd34c1eb41`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 08:02:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:02:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:02:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:02:14 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 08:02:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 08:02:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:06:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 08:06:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 08:06:18 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 08:06:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 08:06:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:06:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:06:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8154dc284622fb4f6b2910a339d4e429599729583b608bae1fdc5b72270941fc`  
		Last Modified: Thu, 12 Nov 2026 08:07:17 GMT  
		Size: 144.9 MB (144859676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5205b67ae71c71b6e4b1667443138ff7857c70fa53c951d895af1a3fcc2874`  
		Last Modified: Thu, 12 Nov 2026 08:07:21 GMT  
		Size: 20.4 MB (20358039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378b7df60fe54cc1c7d7d1867b5c6787126b0f491368d5abf8df73568a130c0b`  
		Last Modified: Thu, 12 Nov 2026 08:07:21 GMT  
		Size: 4.5 MB (4515248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a98b80a90c71f5fdb5ce64925a79adc463e1eb76b31d672d286cc77924aede`  
		Last Modified: Thu, 12 Nov 2026 08:07:21 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b14eda1d8ce625fb0d1f6d7f4fa2e47e853e69f0e6e6ccfebea2d2fc2ae7cfeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa22f0355c99321edea18a72c9e5276a54f0418dc6fea514f0de86189190e40b`

```dockerfile
```

-	Layers:
	-	`sha256:56a0817941794537e2a87dcc8cecbeb817aa27b3586d228aaa021474d2e0f245`  
		Last Modified: Thu, 12 Nov 2026 08:07:21 GMT  
		Size: 4.3 MB (4288611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49f374accaf28c29938cb69fdc9e659662489ba1509afdaf9758f26c0632c79b`  
		Last Modified: Thu, 12 Nov 2026 08:07:21 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json
