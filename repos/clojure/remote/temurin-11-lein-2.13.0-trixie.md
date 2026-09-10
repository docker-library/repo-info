## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:1df68156916b8631e8cbfa781705ba3972780f29d5f1cf92c0d91e75dd6664fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d426e2fd0cb37ddabce6819c634466c9c777d19d793df4852843ec25bfd63d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.1 MB (222135448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e850b7703702a5201cdb41a7158708fa0bc2f3cfae92a10d9fdcf8dc5d0b8bd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:45:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:45:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:45:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:45:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:45:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:45:00 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:46:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:46:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:46:14 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:46:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:46:15 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bf14a9aa8156c0bd87d9dd253c7c52914b75158211e185f80e9709844f318a`  
		Last Modified: Wed, 09 Sep 2026 03:46:34 GMT  
		Size: 145.9 MB (145861431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b74ac72e39140a354b7a5e7fb902cb127b8ef66823a7bba779ef8bb5906f6c9`  
		Last Modified: Wed, 09 Sep 2026 03:46:32 GMT  
		Size: 22.4 MB (22420978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4454f8d79db27a36472365530637e13945ab021b52321d94d454d68ff4b91c`  
		Last Modified: Wed, 09 Sep 2026 03:46:31 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:57c86c5f542c4ebc73591a789cd5796a463a0ef3a4fa084d2f67f664fa2fd8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:501e76863263f67f59eb055fc89d8971465301429fae57136f6f91de1df3f8e0`

```dockerfile
```

-	Layers:
	-	`sha256:02787a857d43d20b394ab7e5e08dc69ee24b8be04e85ad09fba9e71db92b47db`  
		Last Modified: Wed, 09 Sep 2026 03:46:31 GMT  
		Size: 3.8 MB (3842348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af22014ddf05a09b23848d9cd39c2a5cba9057dbd35b149cdcf4a037ffb0e12c`  
		Last Modified: Wed, 09 Sep 2026 03:46:31 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d8e2376221192482d89173ed851988d7ca1968949638a9d2c82282dc9034e749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219529105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6546c37488828eb6fe06e924e8957e35e2c687e0649fa8f185c76217e639e1fd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:56:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:56:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:56:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:56:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:56:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:56:07 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:57:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:57:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:57:26 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:57:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:57:28 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5f6c92d2a1dc43b1f76114ab1ed42db643e62a2f54424d5c4fc4015ad9ddca`  
		Last Modified: Wed, 09 Sep 2026 03:57:49 GMT  
		Size: 142.6 MB (142566271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d965b431af4d8f93dc61e2777349604026c5eac6c3c8612ab9986ad231be77e`  
		Last Modified: Wed, 09 Sep 2026 03:57:46 GMT  
		Size: 22.7 MB (22742712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66290d9b277bb37486c6887adf5f7122b5447bd3cf28bba4fe8815df675af589`  
		Last Modified: Wed, 09 Sep 2026 03:57:46 GMT  
		Size: 4.5 MB (4515237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:164ddf6f2fbec66a2c63c632a193f87fc6bc2006f1449783bcd97b85587084fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3859061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec4be35021b4500adc406a440a264c79321f49dcad00d4a075b2e39a263938a`

```dockerfile
```

-	Layers:
	-	`sha256:c5645ddca0700ada532bbd811df1db599920e4ff428b9466777722a43718df86`  
		Last Modified: Wed, 09 Sep 2026 03:57:45 GMT  
		Size: 3.8 MB (3843206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8f76d8775544253b027bceec009b7effe61283a02186d3902dc1469292ef626`  
		Last Modified: Wed, 09 Sep 2026 03:57:45 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:47787ce579ce1fd235e445a6c6932ce285b8dc2755fc160c651c2ee134d3d77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213478987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30ba377018445c2617aa39b90d2d78f064a972b81fde37d2645167452e91d6f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:35:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:35:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:35:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:35:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:35:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:35:59 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:39:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:39:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:39:24 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:39:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:39:28 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c681dd5309fd8c54e8e52a77339c3ff7b581ac689305d4cd6ec4f4cb1643b5`  
		Last Modified: Wed, 09 Sep 2026 10:40:10 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdf1df7d87f2a6ecfe2095d53a2bb782c4736734a3cfac9059ab24574211088`  
		Last Modified: Wed, 09 Sep 2026 10:40:07 GMT  
		Size: 22.7 MB (22709966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd8213e1b05a37a384a029695110b227c8846822aef7f35c2822beece4e61f8`  
		Last Modified: Wed, 09 Sep 2026 10:40:07 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ea1a2213e6233a8e50fe7e4491bf66be0f9ab39d4ccf6fda91a47b3440fd096c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51adb767a46726adbf37b10ccb7c50e529fbb99ef82a35def9a6ac64a1124dc`

```dockerfile
```

-	Layers:
	-	`sha256:f4c260f232839cd41f79916b1dca0979b09c324ee70f74b0d1e70fdd8f277699`  
		Last Modified: Wed, 09 Sep 2026 10:40:06 GMT  
		Size: 3.8 MB (3842733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10eb01bf6cc009e6cbc181432026ef30e3ba0d01616c1585be1c80a739dc0f71`  
		Last Modified: Wed, 09 Sep 2026 10:40:06 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
