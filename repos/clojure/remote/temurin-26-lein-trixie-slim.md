## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:daef557ace2566c8c7e0653f8c3d17648a7b9cabaab263344c7c90b8cf8f95b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9ee07d687974b081ca2586b40f86b2eaafe3774d5d7c5eaa8a7056799294d3be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148588702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad56721b4e2a9c5c99b0c305a26adc746e46efeac2faff92ee6aa7f207bffa3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:51:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:51:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:51:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:51:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:51:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:51:25 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:52:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:52:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:52:39 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:52:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:52:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:52:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:52:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce3d8de77000c9a2ef13e441d079964ec98c9c8394b8b14087e06584cb4dcf8`  
		Last Modified: Wed, 09 Sep 2026 03:52:59 GMT  
		Size: 94.6 MB (94563771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c15c4ed1a9c8d55f4c3dc9dbdb6f5fb71e643f9534cfc85d44eac14bf2c4ae0a`  
		Last Modified: Wed, 09 Sep 2026 03:52:57 GMT  
		Size: 19.7 MB (19716631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e012c9c86ded05390d3bac690537f081cd875c2b921e8c6cd15b4dc14bd2cbb0`  
		Last Modified: Wed, 09 Sep 2026 03:52:57 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f1f7ac121829c7669702650f0557e0a1f317738bed489eff9b1a21a4b9774a`  
		Last Modified: Wed, 09 Sep 2026 03:52:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:37c1a8f5598463134c850a2e6153a009f3f9a4f1cc652426d9ffef908dbbfe0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b570eb053bee9ddb0cd82494eff5f009bc4611835a77374d6f9f7cf573c73e90`

```dockerfile
```

-	Layers:
	-	`sha256:c7dd6b03cbba95d05b5a8ab2358469364e4e1f7e6f946dc92f66018cda7a1ad0`  
		Last Modified: Wed, 09 Sep 2026 03:52:56 GMT  
		Size: 2.3 MB (2332208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b2c4edc6634573ce5d282d550480cf456fff1ab67dcf37981d883a355e647ad`  
		Last Modified: Wed, 09 Sep 2026 03:52:56 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4918320feee0b3ab9a6db355e2d7fb28c9c67ea61a20fb2eda1cfd61ea075e5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148254039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1064cb0fd7cd2b34311c624fb9a6fd85cd2efd9f779d676af60dc1f51f08c59a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:03:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:03:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:03:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:03:26 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 04:03:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 04:03:26 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:04:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 04:04:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 04:04:43 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 04:04:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 04:04:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:04:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:04:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104c823b237b9d3d0ce17cb914ff83eef67a95bda8228bfdc71395901959308f`  
		Last Modified: Wed, 09 Sep 2026 04:05:06 GMT  
		Size: 93.5 MB (93541568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6887409377cb12e43801830f21084008b4727c507a9535e913362d1435446d5`  
		Last Modified: Wed, 09 Sep 2026 04:05:04 GMT  
		Size: 20.0 MB (20037282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7afd3d5e4a49fed4790682f9fecc2033ff5e1b54584fd72fa16468eef25a36`  
		Last Modified: Wed, 09 Sep 2026 04:05:04 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33acd6d6bc25a5e571dc620b1fc8a6344ff9de888db5240f890eafebfebd0566`  
		Last Modified: Wed, 09 Sep 2026 04:05:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7fc1d4766fbb5ad108dfc7249d6fa6f49edd0eedd11d42b66b85106df264370d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd0ba4a9720f158104b61583d417be832e84c28d3399cdf686a85c9808d149d`

```dockerfile
```

-	Layers:
	-	`sha256:081dbed89d998d013abd78770da21259628a74141f1f2954a1b49177c94ad768`  
		Last Modified: Wed, 09 Sep 2026 04:05:03 GMT  
		Size: 2.3 MB (2331815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d3ce5f2573008649b02086bdedae8c6f7aa57b3a87aab34d9de1fa5d71b74f`  
		Last Modified: Wed, 09 Sep 2026 04:05:03 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7f3d6a9d1e1d90c3ad6abfaa1340e2f2f07571cb6aee8d4f49d3a35b8960274c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151472141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007750e54b91f93f6222c0fec5034d8197c334eda99e488100ccad21e9014914`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:34:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:26:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:26:49 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:26:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:26:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:26:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:26:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608b3a40f1878f85d44bc480856c9aa02ce972baaeaa34726cea2cca44752cf7`  
		Last Modified: Wed, 09 Sep 2026 11:27:10 GMT  
		Size: 20.0 MB (19990246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785db7c026bf4be3543d55da23f590ebe0fdcb204e914e525bf9361805884251`  
		Last Modified: Wed, 09 Sep 2026 11:27:10 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53317f38b0ecd3fe6a3591b13de2068eca12341e83328296dc9bc571fb2d6c4e`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:36991a300e7b49d602c0f7a24442d2e820e69b98655f4fe4df8dde0b070195b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1def9b72393bacd5e66829ddeb1a94188947257bd7a4f0bee00eaf69e009a34b`

```dockerfile
```

-	Layers:
	-	`sha256:6a0e55c46fd609d0eb0ac20fd9bddc085be7796371aec26b5149fd5ff72948f3`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 2.3 MB (2317124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59641c1b870b327b5b71209d3242aa5ed8891698fe54c87a3074e8c43b9fed11`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
