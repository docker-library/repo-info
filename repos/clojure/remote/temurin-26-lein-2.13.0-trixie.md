## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:e9a1ee2fe019932b476a5275d8bf20bf31b6a6640ec30860b9b23e0195b5418c
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
$ docker pull clojure@sha256:3fd81ffd3dcbf9eb4123b9c2e2e78a6d47254bcb5a10b399395e1d2b357cfde8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170838204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d102867fe171f5bc4fc37d03b812efc848e46a71b99280b0a5ef732fdbf146b3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:51:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:51:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:51:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:51:17 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:51:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:51:17 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:52:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:52:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:52:35 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:52:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:52:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:52:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:52:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049c4e065942f9c851f6b02c33072c18b0e1664d5d530b6cedd7df95604ac5f9`  
		Last Modified: Wed, 09 Sep 2026 03:52:57 GMT  
		Size: 94.6 MB (94563742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3124e4c777f9ca4523cd8a32a828742a4eb41a71960e32712544577e787a62`  
		Last Modified: Wed, 09 Sep 2026 03:52:56 GMT  
		Size: 22.4 MB (22420992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb27dad973842a60c9a62b27ca9acf581c2367fba66708fa425af3f1c601643`  
		Last Modified: Wed, 09 Sep 2026 03:52:55 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10441e0e6db980b3d062558aa1632dec2a12592ae830affa991500ba20274846`  
		Last Modified: Wed, 09 Sep 2026 03:52:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6d70f32baa9f572c5960e32b2b84b672e8ac2ef0cd8e1f11bacfc2369efe4682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07625d2ef1c0890d7032a5be87b3571ef81c6e2614d3147ae112056459e7b4fc`

```dockerfile
```

-	Layers:
	-	`sha256:ce8f2e0fe354b8532231fd24e3a16218ccff5ae09e67a51dfea7eef7d3967d79`  
		Last Modified: Wed, 09 Sep 2026 03:52:55 GMT  
		Size: 3.8 MB (3787727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41532d1a13a907ed1cf9ab4c45bd03f0999eddf5cb99f8409f4b8996b9a6e2f0`  
		Last Modified: Wed, 09 Sep 2026 03:52:54 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:caa1be2c467cd792127e776570482879443a50c91b07d3ebcc8851294e097d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170504899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacbf9ace0b77d7ffa3ab6a68444932bad2f2d27299324f8f39f90c263d3a95a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:03:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:03:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:03:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:03:19 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 04:03:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 04:03:19 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:04:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 04:04:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 04:04:39 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 04:04:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 04:04:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:04:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:04:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34e44bd3428993a5e2185c8910e5f9ee90dbf1147a0951df073348d619f733e`  
		Last Modified: Wed, 09 Sep 2026 04:05:01 GMT  
		Size: 93.5 MB (93541568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52bf7802bdc9a138c66066d289f4e263fc37166bbec8a43f17578f421627011d`  
		Last Modified: Wed, 09 Sep 2026 04:05:00 GMT  
		Size: 22.7 MB (22742823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cc96a7548a1040c28ccab4a7e56aeebcf91c4bfcedd3ecfedafdd30e4ac0b2`  
		Last Modified: Wed, 09 Sep 2026 04:04:59 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7f01e3df650f2364bb94ae2106801db13195b7ec10f62e0d986bdab1cd91b8`  
		Last Modified: Wed, 09 Sep 2026 04:04:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:af9fcc5c12a2182b78a004ebb8a487fbba058aaf923e62722b30b14edd442141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad291d16c0e6a70248e9d8fc1f7a42c9167b974a4d2dc64d05a7317d49150d06`

```dockerfile
```

-	Layers:
	-	`sha256:1ac0adf949c700780ec04f298130ea479e8db767a7e7de0d01d1a510bde9fe55`  
		Last Modified: Wed, 09 Sep 2026 04:04:59 GMT  
		Size: 3.8 MB (3787964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20754599f614a4036af340fe9d9393beed17f9354bb79311172ac67d3e515ac6`  
		Last Modified: Wed, 09 Sep 2026 04:04:58 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

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

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

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
