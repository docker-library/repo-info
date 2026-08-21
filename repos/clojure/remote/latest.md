## `clojure:latest`

```console
$ docker pull clojure@sha256:63176367d5d948d8887c3ffea8163adfe9624caa85bfb2c05c81211926209dac
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

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:b89de23c8213cc03ac3b2d5696669914578df4308bea37d7f49c6f4405c98ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (233969285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7e8fe58ee3dbd104bc60725dc79b192ff1881eccfb894cc11a96942956501b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:33 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:33 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:09:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:09:42 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:09:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:09:44 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:44 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4ed75abb339e183b3838b8529f16dee4fac7de85ad8a69031a631e6fa3999e`  
		Last Modified: Fri, 21 Aug 2026 19:10:22 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4c00f123da2ec7d3fdebdd81c5b7fc81b3af9a8923e9a61551e01557407beb`  
		Last Modified: Fri, 21 Aug 2026 19:10:19 GMT  
		Size: 20.1 MB (20123595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af4dabe7b0cf4bde66fc9cae83a588d2f286d1c4dc9e9908f6a4b08034e160f`  
		Last Modified: Fri, 21 Aug 2026 19:10:18 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa412b9b3a1e21a7623096a238768f4c5a851cbca85812b5861122f8dd2aa7c`  
		Last Modified: Fri, 21 Aug 2026 19:10:22 GMT  
		Size: 68.2 MB (68217228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8f33cfc00f366648412cc01c3abfbadf8a3332675cebc7fea941fd21c7c8e9`  
		Last Modified: Fri, 21 Aug 2026 19:10:19 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc3d11d0c1f7e8660665c65af35ae4a48e15fe6b5def2a07de5ae302eae0bc6`  
		Last Modified: Fri, 21 Aug 2026 19:10:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:f50931a0b896c8ba9be796c7e937aab7dd8b65dc90dd13c939476b820f3eb327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea168db34bace6861ca6738b25a4e7b43baa8665ec8cb2385cc6e5e97d2ef76`

```dockerfile
```

-	Layers:
	-	`sha256:d65d8744ba35e8f9a2aa7126ae9bd176a81e10360063e8587e6a627aa62b0ede`  
		Last Modified: Fri, 21 Aug 2026 19:10:19 GMT  
		Size: 7.4 MB (7441150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb8a69b1f7aab02e05452404af340b851e42c782b4de72ab5c1802e549341894`  
		Last Modified: Fri, 21 Aug 2026 19:10:18 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b05722c5f21a90f3e96dfeaf20ea1be27256fe7046f498ec9342b8c7597dadcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232756797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e800a7e6494b9f92b8a0987f1238bdf89b044797ca7caf1b724ea9cb65fb93f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 18:59:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:59:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:59:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:59:29 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 18:59:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 18:59:29 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:00:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:00:41 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:00:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:00:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:00:43 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:00:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:00:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:00:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:00:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:00:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab800e55302efa338b9b9a4b972ac21fdf2a970b35b47899f283253cf268929`  
		Last Modified: Fri, 21 Aug 2026 19:01:23 GMT  
		Size: 91.5 MB (91532187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66cc12b71ed99d961930effda69dbdb4e98dcf32ba3670e744fdf86e1bc42674`  
		Last Modified: Fri, 21 Aug 2026 19:01:21 GMT  
		Size: 20.0 MB (19955726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764bcc8c27017544cf3613f904f5a6ea1010cb350bdbd017dd4c6f73e50d557d`  
		Last Modified: Fri, 21 Aug 2026 19:01:20 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9ec71caaa3ec2b5727852ad80695cf2ed8a91aea4e79d653f9884fc1ded8c0`  
		Last Modified: Fri, 21 Aug 2026 19:01:23 GMT  
		Size: 68.4 MB (68369244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb642d561050164fda13614cef651b1fa3bd07e3a89508f4d5551ee66e19d1be`  
		Last Modified: Fri, 21 Aug 2026 19:01:21 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5252b4d7a486f222648516b0d5220f54e382de2c92e50b8b8fea1dcec68a6df7`  
		Last Modified: Fri, 21 Aug 2026 19:01:22 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:4f8fd8d61178ae9652b231cffdeeb02ca6b20086263a062692d611faa617d974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7471985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a28f06d3b91e5973ae58273a344d9955707b43a73025ec32a95fb36f4cb3393`

```dockerfile
```

-	Layers:
	-	`sha256:38ce3bb12eb31d400aab12e975366d035138bf01b4c645afa80d1eb2695024dc`  
		Last Modified: Fri, 21 Aug 2026 19:01:20 GMT  
		Size: 7.4 MB (7446886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccf366e6fa1ec561f6f968d4b4e23345cb7b6f40e0aaf5ed5bf0019069167b29`  
		Last Modified: Fri, 21 Aug 2026 19:01:19 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:acf56a5d4c613280ad5548911abbefd28f65c05d3fe3425e129a0236606ac6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242938792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7222f94aab3013a2a1ff8ab8e51ca7a7328a7a7717e8831d7269ffb2b0b6760`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:46:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:46:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:46:36 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:49:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:49:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:49:23 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 00:49:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:49:27 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:49:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:49:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:49:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 00:49:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 00:49:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657805ed81c8838b19ae6cc208be44286fcb1fb1507004590b5867ffb623de4f`  
		Last Modified: Thu, 20 Aug 2026 00:50:38 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd1550bb530a2d9cb6672be925b197bdbcfdab635b803cfd10fb30efffcd964`  
		Last Modified: Thu, 20 Aug 2026 00:50:35 GMT  
		Size: 20.3 MB (20348353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66c2da4905f333da1199678fcf9d14be03dd9f5b269375e2cb34c1e791aaf27`  
		Last Modified: Thu, 20 Aug 2026 00:50:34 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080ead6f0d4264c42478c4898bc736b2b366257dc56a507a87c355b72a5f8ec4`  
		Last Modified: Thu, 20 Aug 2026 00:50:38 GMT  
		Size: 73.8 MB (73818655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6236fe66837cb709c6fd5166ab4db3465699d11c650b8bbc3e7311171e4f40`  
		Last Modified: Thu, 20 Aug 2026 00:50:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465a2a5de768daf19761e49017b904c5723c64c5e981935b56e9804a285a0a44`  
		Last Modified: Thu, 20 Aug 2026 00:50:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:d86f75115b3cac96d19b4210edd31c7f79d808c3fccf1940d9d1ee5da9765156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7454679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac6200d175e39c5d6ceb2daace3437e78fc0bafeeb6c3d223c517e2a38fbbb6`

```dockerfile
```

-	Layers:
	-	`sha256:0f43fc9404d46af26cffe12df3e9dc050b012052b97dbd4f42d3280d88795019`  
		Last Modified: Thu, 20 Aug 2026 00:50:34 GMT  
		Size: 7.4 MB (7429666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e51f135315b17eb08fe0a46060d68c1ab7c361f3163d3cad51fa8de03c93201e`  
		Last Modified: Thu, 20 Aug 2026 00:50:34 GMT  
		Size: 25.0 KB (25013 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; s390x

```console
$ docker pull clojure@sha256:7f1f3854508cc39a55d4f1a714c6fee9ed93f9509be7dc09ff8cb8ebcd3e029c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227212703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03b09c3aad5cf5d79ed75b45d17481a4220d6ae2e87ad05e6fd97af4c73dd48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:26 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:29 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:48:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7a0cad5f0aac8adc2e030a150bc1d40f4c14ef4024c1a7c7db6e4dcf13475c`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 88.4 MB (88420383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f653c08d1f121e25934a6cd35fbd3c1565dc6048609c5d85c97a511610dc4fcd`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 19.8 MB (19770403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2ce953b25928ff4efc001284416f5bb7c5c4cb790449606e1b1ea86239b21f`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a98249af6d751aa9b4f40af8dfd27a5c27c8eba5f359b7593ebe4efea4cefa5`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 67.3 MB (67348342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b112d49c049852f18ec6c1f003ad416ccd71e27f1d56b8cd751265f9f0a575a8`  
		Last Modified: Tue, 04 Aug 2026 02:49:10 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425bfac99dca23d8cd84057e2e2a6283e1135d674bdf8236c932fdc6e1d52da7`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:fe012b44458cdffb9afd55904e2be9f684247abfa8af72038fa774b9b370490f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7436802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55284b4fa93bab8f7e32fb2e23decc03b3611b191b2e0827f708978fb2f5ead`

```dockerfile
```

-	Layers:
	-	`sha256:b6617046fd05bd224c1116b527da4861cac7dabc52b838a37cbe2e8c2fea30d9`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 7.4 MB (7411828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dec46939a32dfd9e4e272f21c699b6bd7da8046b9cde8de6b01418aa85e7dd62`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json
