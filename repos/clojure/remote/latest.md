## `clojure:latest`

```console
$ docker pull clojure@sha256:7980db1cbeedd2fe15fa77323ebd987e12b145460033554b2e9af253c21445f0
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
$ docker pull clojure@sha256:98b841b6340daf639041542fe53f2aee1811ddd5889a7c7cb73013ea80bc2491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233923306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f120745ad4b1450ffde51af829cf2e19a3965648e57c992a185523f243259f36`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:46:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:46:31 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:47:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:47:41 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:47:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:47:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:47:43 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:47:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:47:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225af30d3a67a781a73258b9a614df427b04a3355b314fbdec8e446317d9a64`  
		Last Modified: Tue, 04 Aug 2026 02:48:23 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fe902281d32694baca582b7abb21d884295a598e34bc9ff137d9e0ea232091`  
		Last Modified: Tue, 04 Aug 2026 02:48:20 GMT  
		Size: 20.1 MB (20117831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb1a2daa2dd46ee5cd6cda269f86cf09238dae09d304e61f56cfd4c82db34dd`  
		Last Modified: Tue, 04 Aug 2026 02:48:19 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b6de8c506ea9c2040dbae554b081a86110b2ff53282bad0682d21f55b5cf08`  
		Last Modified: Tue, 04 Aug 2026 02:48:23 GMT  
		Size: 68.2 MB (68217254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615beb279e682531c741f9887e99d1c405d9a3bd93119d8611f022454c97ddb3`  
		Last Modified: Tue, 04 Aug 2026 02:48:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e4afcadde90233320ed840b54a1b75f6670e68a8ec5b3eb8bc044fb1c0ec66`  
		Last Modified: Tue, 04 Aug 2026 02:48:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:54f4fe194f5f3a12695164801933c12f521c45546bda3d7160a5f4760b4ca343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7460922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edefaf36dec7335fa6fdc9d6c2f2517dea1da42a558f84153d5738a0d4e618a1`

```dockerfile
```

-	Layers:
	-	`sha256:645f4df52cf759726f810d10eb8b3d89d8cde30c98c424581e07c746a1ad4c74`  
		Last Modified: Tue, 04 Aug 2026 02:48:20 GMT  
		Size: 7.4 MB (7435947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:797a6aa6a454e1737b36166f1b5529e1de2895b8c412d807fce994fd09ed8b35`  
		Last Modified: Tue, 04 Aug 2026 02:48:19 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4e90ebfbf04da58291ae17c9f0e94283843ad2e2a61ce4e5a09c63c9f4061cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232751821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66c7b4d4c3a6c476133361168a940201cf1b9eaed59dd5aa9357dbe43cc8fd0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:46:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:46:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:47:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:47:43 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:47:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:47:44 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:47:44 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:47:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:47:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7099e73fb7072f59ca038517ea02f3fb1502239f21e541585cc05ec44867756b`  
		Last Modified: Tue, 04 Aug 2026 02:48:21 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa18b55d7ab49a8b56163fd0f304f0d1501a83df1958ccf6d636bbb3ccb18c6b`  
		Last Modified: Tue, 04 Aug 2026 02:48:18 GMT  
		Size: 19.9 MB (19940697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66675d15a2c92d560f413216c2edd91becb093a20c2b6ceb06ad3d9797290400`  
		Last Modified: Tue, 04 Aug 2026 02:48:17 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50ccdf4f88a785f759ff1baa0b8bf37b8051238545bab6b3a11d7e5f2931716`  
		Last Modified: Tue, 04 Aug 2026 02:48:20 GMT  
		Size: 68.4 MB (68368930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ae7690ca136a14adde7b0528305675e196b04aaedb91fa4a25d6fa40e6e6e3`  
		Last Modified: Tue, 04 Aug 2026 02:48:19 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516feecd4d90e24173424f70242dae10982972ece82add578ecff5cd104ab8e1`  
		Last Modified: Tue, 04 Aug 2026 02:48:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:630806e770949ea3b148b251cf1f1da6f19d562e26622eb226819eada21199b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:555c6fc6d2dead7cba8ce673b6bb5fb5dff1c76477e5346734759be0a349cd98`

```dockerfile
```

-	Layers:
	-	`sha256:e7dd916641d01af6b13e45ccc34c497f9dfcc421045450a9786eeed1cccd6a3a`  
		Last Modified: Tue, 04 Aug 2026 02:48:18 GMT  
		Size: 7.4 MB (7441683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:419a55eb0d2217d3d170a47f7591fafa7c8674df5b211e2d77b09a4833923e9b`  
		Last Modified: Tue, 04 Aug 2026 02:48:17 GMT  
		Size: 25.1 KB (25098 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:dda85202621f3650b7ce214ce554baaba9ee03de8c7dcca264ac51da33421be5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242923138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2869b334599bec451eb6c6b368bdf00bbac9f3f9c99df46bfebbe2a2d085b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:43:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:43:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:43:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:43:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 04:43:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 04:43:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:46:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 04:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 04:46:26 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 04:46:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 04:46:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:46:32 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:47:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 04:47:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 04:47:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 04:47:07 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 04:47:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2b7a5ae2783074d802366093047d5a166bf3592a36ad11dcdc86d5868d7e0a`  
		Last Modified: Tue, 04 Aug 2026 04:47:50 GMT  
		Size: 91.9 MB (91914020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1687a719b4a9a87e674979a45be2c647b5fa1f75722a0df067602877982936ad`  
		Last Modified: Tue, 04 Aug 2026 04:47:47 GMT  
		Size: 20.3 MB (20332230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92399b7ffc55ca353f1f0cbbc22ea518738830558f3a26996c4e026d7c82926b`  
		Last Modified: Tue, 04 Aug 2026 04:47:46 GMT  
		Size: 4.5 MB (4515240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672454caea89013ced4d1066d09e70d9a99a9ef4800ecb6344c6a04beff00ca9`  
		Last Modified: Tue, 04 Aug 2026 04:47:50 GMT  
		Size: 73.8 MB (73818734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf9ea10e532b63a2faaa072f7f04691243d9fa855ee831bfaac615e96adde52`  
		Last Modified: Tue, 04 Aug 2026 04:47:48 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4826783e6a488607296781791157751ae5805adeb61ae982331acf2e2c320040`  
		Last Modified: Tue, 04 Aug 2026 04:47:49 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:26a4ac6f033f4a9b7e6a0a524746da4ae76adcc20829181057531c229e4e63c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731b0befe89db33b33b34a42c4ea30e6c50b444d567c479b42e3ba76a769c106`

```dockerfile
```

-	Layers:
	-	`sha256:e62a021d3b7c05b5f94ee373d86f196c6f4792901e3f14e5132315205ac53fbf`  
		Last Modified: Tue, 04 Aug 2026 04:47:46 GMT  
		Size: 7.4 MB (7424463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34db2b74a4b0b901d09aa813f0127aa5ffa192aa57939f889a997274b1b84eb0`  
		Last Modified: Tue, 04 Aug 2026 04:47:46 GMT  
		Size: 25.0 KB (25015 bytes)  
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
