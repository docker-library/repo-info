## `clojure:temurin-26-lein-trixie`

```console
$ docker pull clojure@sha256:20058ba53bd0017fc38b9090bc19d31b582091c88265e535666077b0d20d4ef7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:bc2b1621f9c3c5aad414802292b8a23242cd9aff246b864bf104e5993247c274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173243957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a6494118adb558e8d19d81db5b297ebfce9628990d1385bee8374509f0d29f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:22 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:38:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:38:22 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:39:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:39:37 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:39:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:39:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d3ebe49549d691b5f594997f5a6c3acfe0c8c18a5ab360f6bb276e7aeffc05`  
		Last Modified: Wed, 16 Sep 2026 04:39:59 GMT  
		Size: 94.6 MB (94563689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bcec9d7b5a10357e01b02a469a4555e8fd445dc81382fae41d928da4cc66515`  
		Last Modified: Wed, 16 Sep 2026 04:39:58 GMT  
		Size: 24.8 MB (24826811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d717ed9d7df428346ba8f26a39da7d03058297aa2004d2f4f21e53109cfdd3`  
		Last Modified: Wed, 16 Sep 2026 04:39:57 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823afdb1edcd48b795f422f8d088c8d1f012ed8c31c6b3f8349377b16d556907`  
		Last Modified: Wed, 16 Sep 2026 04:39:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7b7b76a4ff43badb562fd4923218d4770e904c370f5e0a518568dad4606d382a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e90fced7c21a03edbff64222227304b3f7eabc1c9aa6d0c74504a9fd04e040`

```dockerfile
```

-	Layers:
	-	`sha256:8e4286b40d42fad040bb02d5d091cd42dad7628491c67d39cef69be86262307d`  
		Last Modified: Wed, 16 Sep 2026 04:39:57 GMT  
		Size: 3.8 MB (3787763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cbb17b6604c5046a16437b157d7db733f809c8d2cf5335372e9f97d30729bdc`  
		Last Modified: Wed, 16 Sep 2026 04:39:57 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:85e8b77ba17ef4343e8833492c2c7821fcf4c661098f56d4ad2c991a31675209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166650591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bcebb13471272d8b04c3b8fe8b1021077f03deb45f0c70e18a3e6420c46507c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:25:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:45 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:25:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:25:45 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:51:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:51:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:51:48 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:51:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:51:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:51:50 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:51:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe73a2fd1e6fda59cd74d6766f99fc9fa26e77e1ae0fa2b50eea5acf89abb2cb`  
		Last Modified: Sat, 19 Sep 2026 01:26:25 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a44cc974e172a7489d7691ded83c0cb3602d91ee6d6d98571c26875257d8e56`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 18.8 MB (18844523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76cc1a86e35707ef0902b233390f99ef0e69d6596550ec855702ca8cffd85a59`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2389c435c99c42cb464a731097ff583f15a96ac4a38d1d7167444d72037d7a78`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a2b92c7e5a2b58f2650afb18247167c15ae1c8d8cca857c79b5f3b3788284bc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cddc66b843cbef3bd2af677d02ac5e64e9ab16bf3df7b42b275eae68088973e0`

```dockerfile
```

-	Layers:
	-	`sha256:4d76c871edb8ca3be55da3dbac4114e20cf4f75357218ddb7a2287ec82ccd145`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 3.8 MB (3792871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bee3413d4e5ecdd6eab0599cb3a9fa2ee0baadcb2a4f558e6e53a4c2fce68467`  
		Last Modified: Sat, 19 Sep 2026 01:51:59 GMT  
		Size: 16.9 KB (16879 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:fdd244069a194fb94c8eaf546e189e407aba4bb2cfdc8427fa58e68473edc2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173740512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af8411716c42dab86c54b639522f1976b48eee1788b98b79dda4f636d70ef60`
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
# Wed, 09 Sep 2026 11:26:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:26:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:26:44 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:26:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:26:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:26:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:26:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5243a7a2d0e5c67e38f6afe5090c1d11d601da2624223563067dcc89895b78d`  
		Last Modified: Wed, 09 Sep 2026 11:27:10 GMT  
		Size: 22.7 MB (22709835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93116249765f6069e1ff5fe0a26f68f098b5c294c9b8c9920087d484f0365a4`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0190b8184a69eb2c2a7f7f9bbcdd26eff102e312c6441c7d71fac4fb361923d1`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e45531267140a7e49e893ae133e2deb4873583b1b48164e27cb5e4659e61ac8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffba042e15d09470280cfe780d6b1e112fe66bab2300b837f5c840f255735b5e`

```dockerfile
```

-	Layers:
	-	`sha256:3f1e6c87cd93a8d26e189e27bfd03ab18f239c17f507d908aba70f41b12b8364`  
		Last Modified: Wed, 16 Sep 2026 11:01:06 GMT  
		Size: 3.8 MB (3772663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7081ed9f456c259fa044e5ed2ae0370c79cf4d9ac7e51652435d4f488c5a057`  
		Last Modified: Wed, 16 Sep 2026 11:01:06 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
