## `clojure:temurin-26-lein-trixie`

```console
$ docker pull clojure@sha256:9418be9a36cfafa1b2b8c166b3f1a12924c5edc903a572eacdfa4b47c1c79cfa
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
$ docker pull clojure@sha256:f668af31a84af2562023431fef3382dbe26b2171b8b614a2886ff6f84810ca1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172855641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe59ea09df866a5a06b9c5d43404a84eab92970fa305c39c4aee12142bbbfe3b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:38:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:38:58 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:40:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:40:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:40:18 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:40:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:40:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:40:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:40:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e46d44caa38c0059de1a7a3a9f1abc0e105d177d0c6566ef28cdb50b0a0fe1`  
		Last Modified: Wed, 16 Sep 2026 04:40:40 GMT  
		Size: 93.5 MB (93541605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2463502c69e369671a4211d862e71d2766e2ad56ebe56ed997d848e7d727deb7`  
		Last Modified: Wed, 16 Sep 2026 04:40:39 GMT  
		Size: 25.1 MB (25093536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995f26d4b537e51a64a56c2b0f3fe100263a1039f7e78cc22d09ed9ea2cd1655`  
		Last Modified: Wed, 16 Sep 2026 04:40:38 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71c75babcea8cbd41209da281f85d972c900e48dc51cf771967850cf9edea4c`  
		Last Modified: Wed, 16 Sep 2026 04:40:38 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:47724422410306c632f58e5727a0b1140d61a96507159bf8a83e85884e271bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:084b2b5b49b476ea43d2252d23a17dbe842967c827b25e70b744d6fab34a7464`

```dockerfile
```

-	Layers:
	-	`sha256:2acd6efc61ff012ea9f975106e815b4988ff3cd6686fbdbd756887a0cfe89268`  
		Last Modified: Wed, 16 Sep 2026 04:40:38 GMT  
		Size: 3.8 MB (3788000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52ce4a6240f4d561b63e1ab139d8bb1fed6a8d70e58d3f14ddf633bfec029714`  
		Last Modified: Wed, 16 Sep 2026 04:40:38 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8841bfc3bdd9149d39cdeff3c779e78cf4771a43edb3221b09fbbd39e071af27
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
$ docker pull clojure@sha256:7d6a127493326484a3947da4050f4404eed7bfbdfab963e5dae8194c744e8397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6313f8e5d684a784313167ba0e6c8d964fdff65258a7d5f6b7c892014c1b0851`

```dockerfile
```

-	Layers:
	-	`sha256:331e5071a8dd7c0cc8179cca1d584a8b4ebd44cfa3c03dd288e067f6dc23b643`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 3.8 MB (3772663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bd1235148412a1fdd827cb2770fe6441a0412d565a81db6c74c4fd4f65c5c97`  
		Last Modified: Wed, 09 Sep 2026 11:27:09 GMT  
		Size: 17.8 KB (17754 bytes)  
		MIME: application/vnd.in-toto+json
