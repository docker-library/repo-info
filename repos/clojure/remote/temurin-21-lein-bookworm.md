## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:a8f096e3c02bcdcb8bca9f0cfc5cf63af49d6bb2d8943a965c639aa1c91ad026
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

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0d1ba99bf7f4b16bf7b33ef50499f41c184075b84c49b6045c296bac6e930baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231256961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd8fafadb9cb0d4083aa6936126a215189c2ba4e801a6b329d8d70c5a320015`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:16:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:16:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:16:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:16:08 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:16:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:16:08 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:17:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:17:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:17:19 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:17:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:17:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:17:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:17:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529220e9a57b85573da4935a71ac0ab7bf11390a303bb9c9531657bd36976527`  
		Last Modified: Fri, 21 Aug 2026 19:17:43 GMT  
		Size: 158.1 MB (158120332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fef85df5e3f6181d47625365270573003fc0c6c09198b328f2b4ddc891a5f7c`  
		Last Modified: Fri, 21 Aug 2026 19:17:40 GMT  
		Size: 20.1 MB (20123902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7eb0bac035b01d1c74adb70f1fd09d9ee06f11b1c9fd7b87c335bf3fa2f89d`  
		Last Modified: Fri, 21 Aug 2026 19:17:39 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1a76699c89741610fca3bd6a71b5a5ee9b65ba7a870563709ccba93b4af997`  
		Last Modified: Fri, 21 Aug 2026 19:17:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:89721713a412a67263fa25072f55fa9ac8a9c669c1c009f09bf68e7bff45199f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce005a9fa4520db6a9a6d20cf2c5ab5d48cc7b6b5811b69625d1f5a09e6c0c10`

```dockerfile
```

-	Layers:
	-	`sha256:2978754b812338bbed8fe2a1ef7179a02aadee2b53914b169c37e8c0ee80f6ad`  
		Last Modified: Fri, 21 Aug 2026 19:17:40 GMT  
		Size: 4.3 MB (4291757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:765c4465e0620d7a8be26ec04ec26d7fc093e39a92088b5c85168e661b76cc31`  
		Last Modified: Fri, 21 Aug 2026 19:17:39 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc3b9e03010bbea5c532c0a3eca8bf21856305dc567b0650081f2fabd27924ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229256295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b4d39e1072021dfab506603fff0c6c7d945754c79e06366397dd2ff47e4b62`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:05:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:05:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:05:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:16 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:05:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:05:16 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:06:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:06:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:06:24 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:06:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:06:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:06:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:06:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ea2e5f743239d61bde93447d150eb073a8f2504120551ef1e51f39fedffe16`  
		Last Modified: Fri, 21 Aug 2026 19:06:47 GMT  
		Size: 156.4 MB (156401969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1dcbde704c230426c4c74a9437cb88fe30fa2df37ca499f2f1e9273be80b09`  
		Last Modified: Fri, 21 Aug 2026 19:06:45 GMT  
		Size: 20.0 MB (19955304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82cea6a99d7737ecde0c3c9969d393c567f0f308173811780bcc3e2d257f0905`  
		Last Modified: Fri, 21 Aug 2026 19:06:44 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb89b3590d1e5191fcdba2f1efcf6b4fcec1530369ef458086d53aace9071ad7`  
		Last Modified: Fri, 21 Aug 2026 19:06:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6acc109e7a3edc476c7d4d4bf05297d7f112d395167c64b225538a4faa8805a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13d86dd9f9f8a7568d110bfdd6a1017da0f14b04b21b2a4a0303ad08f7cc1bd`

```dockerfile
```

-	Layers:
	-	`sha256:e1b09c279f706a210ef5bb70bd5210d1d4cbd136e888421d36ce53d0a6c50181`  
		Last Modified: Fri, 21 Aug 2026 19:06:44 GMT  
		Size: 4.3 MB (4291396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9ecd1c8e97910c97684f0bc8b554246f5f1316cdd83f79a04ebdac50af701aa`  
		Last Modified: Fri, 21 Aug 2026 19:06:44 GMT  
		Size: 18.5 KB (18532 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:97e7b9c2072f6d28155a654b3e24262aadea813e822041a3b878fdc46ace66ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235548479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f5a604b24a60a991c58250f0a6164a7f0700e9ebbf3aa65f283dd770eb08a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:17:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:17:10 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:17:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:17:12 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:19:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:19:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:19:47 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:19:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:19:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:19:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:19:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0c7008fc73cda87986c45f144a1687dcded88fbaa0b8786b7366fcf3e8ce03`  
		Last Modified: Thu, 20 Aug 2026 01:20:34 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4cfe8b6a9c7ff2dd13b329ecdc05a513c6d28f8dba99910916b025a4483bbf`  
		Last Modified: Thu, 20 Aug 2026 01:20:31 GMT  
		Size: 20.3 MB (20348082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023f96f22ecbbd79e5f6dcb933e18d936c03ba227fcf493cf59c1725bc6848b0`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142ef346e6f11c3dc288b51ab34ca041aa8fb33ae70b3273ddc3967906f61adf`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:566e4b5a60c496fbcdbe07f2625a3e08f184437b0cdf9a0adc73d7672595e746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a661a7ae5cfbea1478f6b70223d9dde6d9b96c1831a84222e4f090686de458`

```dockerfile
```

-	Layers:
	-	`sha256:a3e59b7d2f8ba3a7a759cba31496999545818dafc267c9d1d576116d9cc74de4`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 4.3 MB (4293632 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0e82dc6a4134e9c9c3d4fe06e2f95538a115e716bac92d2cdc92f6010c01a0b`  
		Last Modified: Thu, 20 Aug 2026 01:20:30 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:aa4ebd343cebd7d7689a6b8930ba40bf4c22d47dac77e0e95f82bf08005de2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218831462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eefc69b1948cf206c96086178b8e9cdca0a68e1b90138a51118ca73fbe2ae3e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:56:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:57:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:57:55 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:57:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85dcfc051b008b074bbe299ec56bc68d10c2e3984c5f1bfe2d60af60ed6ea50d`  
		Last Modified: Tue, 04 Aug 2026 02:58:24 GMT  
		Size: 147.4 MB (147388364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16add03dbc7ad3a915fb8971784b949fdae243993c084b906e1c4ae78b7cdef`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 19.8 MB (19770178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58439bb24efda4a8f11d7f79546c0c1afdc82e69db24b9f08bcc238d44581b4a`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2c73ae5e6c530d760f06e2fa2d4681a9511780e7b8c82e196d93a7247791c8`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:76f7ebe3d1770ee8520c5212dd0d498dc4f506ad4a4cfa8f81d4d0b4951e6918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ffce61ae4712fb824cf61f664ff217a12f133f87b9bca59c73bf42800e124a`

```dockerfile
```

-	Layers:
	-	`sha256:6d15e7eb1cb7f7605af14840e26212afd86a5c2cd0a351bcfb207d63d6aec71e`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.3 MB (4278370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c1d1f3f7d0439e4710df003ed5c7f3cc4583548c1a1fd0c442b86598d460971`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json
