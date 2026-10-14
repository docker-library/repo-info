<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.23`](#kibana81923)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.23`

```console
$ docker pull kibana@sha256:0848721d19f6277495ff1ee0b7c46d274dd1e9b644924204375713a81a9823dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.23` - linux; amd64

```console
$ docker pull kibana@sha256:14866a12c15358a395895a6bf994099da5d0b034217270a05f5ffc742a181b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.9 MB (461880499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3495d6265f55865ad531a5816e002ab2c6cfbedcb0fb89780e9c26cb24d32`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:50 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 21:42:50 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 21:51:33 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 21:51:34 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:51:34 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:51:35 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:51:36 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 21:51:36 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 21:51:36 GMT
USER 1000
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594dad02f1ae2f1b9da7e1627972d3175f328eb7e1076d41db5cba36dfe94dbe`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 11.8 MB (11824554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b1e84a10d42edc0febe4d979e0660b34d504caf07d9751f1251309b09e151a`  
		Last Modified: Tue, 06 Oct 2026 21:52:46 GMT  
		Size: 403.6 MB (403647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9ff19a17960490e02bd5689b8b9349374984126186ec90cbfa0d50f29a82e`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6c7aa7bc37981ebe0a26239cb491a4c0abfef41f35f4f945710c9845293d20`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac54e82dee80888240c24ac09741e242bb25d24db2aeef409ed29aef65f985c`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 5.2 KB (5242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e237576ae19bb7388ec67ee7c2b949cd74f6be18d37d6ec741fa9b0f79c213d5`  
		Last Modified: Tue, 06 Oct 2026 21:52:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1a9a58ca77fb001f35f37930abff36d733bab8202c7c459b9c310ff93a432f`  
		Last Modified: Tue, 06 Oct 2026 21:52:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ef90cf3595782e5e552083286e4c50307bb15caa797d8eacd58092f7920018`  
		Last Modified: Tue, 06 Oct 2026 21:52:41 GMT  
		Size: 4.8 KB (4820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4b9e3522b237bb3c5127116bc8ef3bbc1fc8490cabebb59d286271f695a9b9`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8fd1f33cc47487fd1cd84cad0247c1429097d7741eb5bcce6ffcf6b593c648b`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d3751e554fd6a372b40629ff716d098c53fd7d05d6aefc378e3795c10e65ce`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:0f371a369d9bd63daa26e5c548a36fb3bf21ad85cacd95ab64764ae842e37dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4925902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150966d969d3f8f3eecc050c2f26d0d76d98deedd010aafa48f971428caae239`

```dockerfile
```

-	Layers:
	-	`sha256:95329a2f3f9259d16c6523b83f7cb2fd7c9289784a2745fe0fca485a04db23e0`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 4.9 MB (4884975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fdc0ee71699ce0f599aed8e69cc2b1a092648ce408741b6ca63aebb593bb80e`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.23` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:88e412e0e14fb2755769abd8e2b22c4f2f9c663df3acd15a9fa80757a9086cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.4 MB (474384649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bfe519cd8a3a073179f379c8032d9ccf0cf4ada40b80f06931766fd0b9a615`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:27 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 21:42:27 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 21:49:26 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:49:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:49:27 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:49:28 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 21:49:28 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 21:49:28 GMT
USER 1000
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad3ff031444faca8aa5fb10cb6ee32025996f54ece6210d7e2347de52c707b`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 11.7 MB (11701004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d94f74e7083f2a8d647d039e1d7bc8b02c95abae8642923334f3bdbd1f019f`  
		Last Modified: Tue, 06 Oct 2026 21:50:43 GMT  
		Size: 417.1 MB (417103468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653f20881f1976eda44dca58c81118686e5c2f350f3cae00d1704fae457b41bb`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8da12a805322f3fa0783c2d6f90dbd322104ceb62600a979bac650ae2d6032`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afe2c75b9e301d308ed8aadda2309a854a645b5c5564bd7f93e765cb8fc01f3`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 5.2 KB (5244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27633739b043cd823141c5121daa0f28241238224f8fb230ce9ef1084ebf440`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3204c16753d47f7fdc81434752ccb5e85954d16586c87b6e98d5820c22b0bb3`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d02f1a13fc45e03e56c44232b0e2cd30e97abee1a171148107c6d74f8bc4b0`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 4.8 KB (4823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2adcfd49f08bb60702c73d755492964a5089af1b8c6bb1e832e55554c704fa5`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc55c25200c871a1f832faded80d00e612cea0e64012ae5aa83aecc91a08379`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 158.3 KB (158253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954137a9d4ad16c0d0e8790a3402c4981c663ca2e5212bd6ecee322f85791c2a`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:93311e745c4e785ed9f1f59f5ff49084a395537e2f23800a091c2b92f447ff30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4927214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a99e199e09416a2aff2cc627447ff3401432125dd77df11effaf074e08be8a`

```dockerfile
```

-	Layers:
	-	`sha256:4c3ca259c4655d6b78261e4cd22331a9a8c4dfae0ccf418cf13dfa218e9fc975`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 4.9 MB (4886039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08de90cd117921e6d22539c69c3d0ecf0849c7c25dcda1240fb622edc0a10c2`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 41.2 KB (41175 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.8`

```console
$ docker pull kibana@sha256:134a85020a209d01baedab42d354346a8585ea8af7468035b0fe96439ddad81f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:14685e3db41fb3a5ba394ca4de7c4d8dc65dc333ff9c2e7c6dbcf4349588909c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.7 MB (545682946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7324ee87fe62a8c85c6ed442a89a2bb1193901f37104f7d8c25265e1e7dca6c4`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:59:04 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 22:59:04 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 23:08:46 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 23:08:47 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 23:08:47 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 23:08:47 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 23:08:47 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 23:08:47 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 23:08:47 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 23:08:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 23:08:47 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 23:08:47 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 23:08:48 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 23:08:49 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 23:08:49 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 23:08:49 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 23:08:49 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 23:08:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 23:08:49 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 23:08:49 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 23:08:49 GMT
USER 1000
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da418d3d21b5d5c75bb7e3031e2141acd1d59107488e1390dd89ea17f38cafae`  
		Last Modified: Tue, 13 Oct 2026 23:09:56 GMT  
		Size: 19.3 MB (19313671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fad5f38d45df6e588098a0b2a69cca2ffd1e2ef279dd72a25bb8601896cde93`  
		Last Modified: Tue, 13 Oct 2026 23:10:03 GMT  
		Size: 469.1 MB (469073558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e401272371fd1c3613df4172a6df763e6d6b22f059a5a88e4c1b2e03ba8783f`  
		Last Modified: Tue, 13 Oct 2026 23:09:55 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdc671e85fac2cda9395ad7638fd91b6eee850cf4ff7523de81dc2419bd14a4`  
		Last Modified: Tue, 13 Oct 2026 23:09:56 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64bee8667373337b33c44e34bb4ddb1c10d9b6c73f1abff85e3218016be92a0`  
		Last Modified: Tue, 13 Oct 2026 23:09:56 GMT  
		Size: 5.2 KB (5221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353ead995231b6ddb4d8fcd94437b00116a04be4ba908495686f13dcd2730dac`  
		Last Modified: Tue, 13 Oct 2026 23:09:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d7420ad9469c73dfe1149596353b36e77ee0d612dadae88e23e10533de80a7`  
		Last Modified: Tue, 13 Oct 2026 23:09:57 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7202b3b2cfcc3e2d4c0e6f79b3dcd15a80bfe88b5ce0811ba34afeabc5ac99`  
		Last Modified: Tue, 13 Oct 2026 23:09:57 GMT  
		Size: 4.9 KB (4926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45dd61a9acf0a1eafa6bbb938bb2c94e6d9fc9818640ad5fb650db952f5fd06f`  
		Last Modified: Tue, 13 Oct 2026 23:09:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b276a85dc30f34ac10cb912fc92b26dbdac2b416544b298f66317971b144e0e`  
		Last Modified: Tue, 13 Oct 2026 23:09:59 GMT  
		Size: 74.5 KB (74548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb25c386c8b2a283a0f4f98e03f52257532865191863a5aa0aef403e251b922d`  
		Last Modified: Tue, 13 Oct 2026 23:09:59 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609fe522ebbfd7d0f8e0a5c90d1bfd3ba17800a6305507b86fa6d10d8acff4bc`  
		Last Modified: Tue, 13 Oct 2026 23:10:00 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:eb32ee4a5b57ab051e4b2ab97dd67ee684af0c12d4fea7d4d8033371a01549e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5920286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca49326c67277fb542cbd6b554c66ef0e7837dc600db4113ef7032a7020f9e86`

```dockerfile
```

-	Layers:
	-	`sha256:afb3f41bc0668c8b3087304f5343cff29f87b9405cc5b11200aa72d9aa2f6e13`  
		Last Modified: Tue, 13 Oct 2026 23:09:55 GMT  
		Size: 5.9 MB (5877060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbcb71b5e4e77b5a8ec4ca5bb7a1ed647f94aa02db1054cbcb81b360db8e3259`  
		Last Modified: Tue, 13 Oct 2026 23:09:55 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:4502ccd6af90e294cd30b8877f3714638956fe6b75039513d02061676dc92c14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557144387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac0fce0a765ceed43a8ec0b644e7803475f8bd3702dcc144e25d15f6384cfc6`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:50 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 22:57:50 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 23:06:00 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 23:06:01 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 23:06:01 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 23:06:01 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 23:06:01 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 23:06:01 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 23:06:01 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 23:06:01 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 23:06:01 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 23:06:01 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 23:06:02 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 23:06:04 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 23:06:04 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 23:06:04 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 13 Oct 2026 23:06:04 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 23:06:04 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 23:06:04 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 23:06:04 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 23:06:04 GMT
USER 1000
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1642a0fee86707fd33073f3661e4d1dbb55b9fdcccf3b92002781ff623efa67c`  
		Last Modified: Tue, 13 Oct 2026 23:07:25 GMT  
		Size: 19.3 MB (19254519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d703fe39351e558a5172afaef96c835eab11915d32b10755aea1e066ec4d94e`  
		Last Modified: Tue, 13 Oct 2026 23:07:33 GMT  
		Size: 482.5 MB (482528822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b49fb01e95f3e0056ff7aa6f89a27fedca772ae3f4d03e41c108122a6f8a2e0`  
		Last Modified: Tue, 13 Oct 2026 23:07:24 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad7cb9bb1258c082e4ea266b3be956da00b4dcf73317c5912d0abc285e95ead`  
		Last Modified: Tue, 13 Oct 2026 23:07:25 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bd3781fd5720cdeec6d7ef1f675a29b79defff14fd7abc444e87993074a600`  
		Last Modified: Tue, 13 Oct 2026 23:07:25 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f538f30c67579eeed007465c89a396853fd99a266cdf70745f86901ebbb2e6f8`  
		Last Modified: Tue, 13 Oct 2026 23:07:27 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86cdb06c880e71b9c59d7b04ba5719d517b3186c033bd6a263844e52f417f9f`  
		Last Modified: Tue, 13 Oct 2026 23:07:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1be023f7fee0b56c34f7e1ea72488aaeb0e1feda121583f10475ea6eec82cd`  
		Last Modified: Tue, 13 Oct 2026 23:07:27 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:570750dfae2f41e7d17ce808e402551a3d57b364248bcf1c484827129339b90e`  
		Last Modified: Tue, 13 Oct 2026 23:07:28 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac984f35ac5c8cca75394b8ed9a5287d32594243008b9b2f2f6751d6b43c612`  
		Last Modified: Tue, 13 Oct 2026 23:07:28 GMT  
		Size: 73.5 KB (73451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb99d13ec5571a2a7b781115abd6ddf341bfa193e4a71da05a887a27189aa8d7`  
		Last Modified: Tue, 13 Oct 2026 23:07:28 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339e012b134ea8d6cf52765153b46e11c6a6ecf60b71277afe9c4468addba643`  
		Last Modified: Tue, 13 Oct 2026 23:07:29 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:15b12bafa32556bb3b1db6cc14a93c448a9442249be08984e9288d9069ea9b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5917433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f35dfd470397744738e541c84aab521ec3b51d88283ce96b98167db15a03489`

```dockerfile
```

-	Layers:
	-	`sha256:5b59193e44b1c501220a8c996068a19674cea8291a7382c467c0187ae2739414`  
		Last Modified: Tue, 13 Oct 2026 23:07:24 GMT  
		Size: 5.9 MB (5873950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1baedd53105dea28615b5ba8b935a7bd3180e58e5245a3da59f2ec1548d795`  
		Last Modified: Tue, 13 Oct 2026 23:07:24 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:83546f39a6a07ee0b0042f5747625cbc68cd70946d5af246a0309a48b9c3d207
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:eca6166183e22901323d719c3a0a3b888c39f827cdac3ce3f5328747cdcaacef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.3 MB (537314199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49444e13c87f6512a1d59a849479747b5b630a62eef9156cae4b48f9bec557d3`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:56:40 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 22:56:40 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 23:04:59 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 23:04:59 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 23:04:59 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 23:04:59 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 23:04:59 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 23:04:59 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 23:04:59 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 23:04:59 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 23:04:59 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 23:05:00 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 23:05:00 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 23:05:01 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 23:05:01 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 23:05:01 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 23:05:01 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 23:05:01 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 23:05:01 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 23:05:01 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 23:05:01 GMT
USER 1000
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679b83b10f2d814643c66485444ecb9492d331f563af21a6a41cc62b5e0c0236`  
		Last Modified: Tue, 13 Oct 2026 23:06:13 GMT  
		Size: 19.3 MB (19313487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919ebcd205e154238c93300076856d6cfaba011391ed1974e3c90ce83fddbb00`  
		Last Modified: Tue, 13 Oct 2026 23:06:22 GMT  
		Size: 460.7 MB (460704915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5330aa63b493c1323221885a3b56924742c1daa2b2926cabae47b3950645d2d`  
		Last Modified: Tue, 13 Oct 2026 23:06:11 GMT  
		Size: 9.5 KB (9531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd3ac44c5d68777f12b5341c962f2c34f752e5e657855bf01407c92cfa6bfdd`  
		Last Modified: Tue, 13 Oct 2026 23:06:13 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9f3d65ea18f9efba9f8b78ef704da58cd110540cb3dca2b51e77f70b4e89f9`  
		Last Modified: Tue, 13 Oct 2026 23:06:13 GMT  
		Size: 5.2 KB (5224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e10a5137d70956599d1adcb646a9f4763a89dcdfa3d8e359664a8808e1abe1d`  
		Last Modified: Tue, 13 Oct 2026 23:06:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d5b37932022b5a7381119bd7073015c3f4202a0c9bde5b9155a661fb84190c`  
		Last Modified: Tue, 13 Oct 2026 23:06:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd802a8d8190c05803f1db8d8a130e18ceb745b101492540715f875b27681432`  
		Last Modified: Tue, 13 Oct 2026 23:06:14 GMT  
		Size: 5.0 KB (5003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb6b8e32f09ed303edddd84da3b6dc51a92b3191680a15890775e986cba8c0e`  
		Last Modified: Tue, 13 Oct 2026 23:06:15 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8587ae1b2b34ba59f08d1c4eb7d80fd37a3d295c6a6db82930a0d7fa9ac710`  
		Last Modified: Tue, 13 Oct 2026 23:06:16 GMT  
		Size: 74.5 KB (74546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fd85d475e702bf16ab350e63f3ba116054076389e5b008f91e9f455f706c81`  
		Last Modified: Tue, 13 Oct 2026 23:06:16 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058aed2b83826e897a26da2b1310922e77ad229468e05d9ab5012ae31a17f186`  
		Last Modified: Tue, 13 Oct 2026 23:06:17 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:c7e84e91eb4a0cb5a211e790f482e908cf4621fc6e7917f0199eec01d0f565a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6140351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bcf7801a74aa48ad373b83561d669e9d95ebe2bda80929c4e7e240799fb956`

```dockerfile
```

-	Layers:
	-	`sha256:0b610f82ae53dae859ee2ccee71d1975599252aa79692bebf1ed96d627b840d7`  
		Last Modified: Tue, 13 Oct 2026 23:06:12 GMT  
		Size: 6.1 MB (6097125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0957f2a1d93e3562a40b9042363f244dd1d95e434115cc4bdae2ce04f528d506`  
		Last Modified: Tue, 13 Oct 2026 23:06:12 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:4164d34f1c744b1931ba886d0220263713fcc4af6d6f0407b75c9403f1ff5aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.8 MB (548781984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c258d713a035151e54e7e3f2d6751790f0df363a68bfbfdee89d048c3b15a05`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:53 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 13 Oct 2026 22:57:53 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 13 Oct 2026 23:04:46 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 13 Oct 2026 23:04:47 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 13 Oct 2026 23:04:47 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 13 Oct 2026 23:04:47 GMT
RUN fc-cache -v # buildkit
# Tue, 13 Oct 2026 23:04:47 GMT
WORKDIR /usr/share/kibana
# Tue, 13 Oct 2026 23:04:47 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 13 Oct 2026 23:04:47 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 13 Oct 2026 23:04:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 23:04:47 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 13 Oct 2026 23:04:47 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 13 Oct 2026 23:04:48 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 13 Oct 2026 23:04:49 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 13 Oct 2026 23:04:49 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 13 Oct 2026 23:04:49 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 13 Oct 2026 23:04:49 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 13 Oct 2026 23:04:49 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 13 Oct 2026 23:04:49 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 13 Oct 2026 23:04:49 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 13 Oct 2026 23:04:49 GMT
USER 1000
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f06ac05204ed127a95c82b2610df23bd638e3b3e726982854734aa57b3937e`  
		Last Modified: Tue, 13 Oct 2026 23:06:07 GMT  
		Size: 19.3 MB (19254751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d732e3fc92da4b98969f642a71a07a71998a16f7b97c4e714c3acb33f8bdad`  
		Last Modified: Tue, 13 Oct 2026 23:06:15 GMT  
		Size: 474.2 MB (474166108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba26346b0dff4d2560359f602aa1f014b56a96edc6ddd069586196c65ee156f6`  
		Last Modified: Tue, 13 Oct 2026 23:06:05 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3191835e67effc2b342a3e556aee083de5cd34678fac2b12c93651609c0c5c08`  
		Last Modified: Tue, 13 Oct 2026 23:06:06 GMT  
		Size: 16.5 MB (16460489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9e33557d485b1b431cbbb65238bdfa82eeb16f771d34962995d2adb2e2e596`  
		Last Modified: Tue, 13 Oct 2026 23:06:07 GMT  
		Size: 5.2 KB (5222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4454e455a4e9247f660a83b826d56545515d3a28b2e473650dc8ea0acb6bfd6`  
		Last Modified: Tue, 13 Oct 2026 23:06:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:551b7b00fbd6db0b018213b8f5e02d0fa5381a7c896ded99f4b88f382a724f54`  
		Last Modified: Tue, 13 Oct 2026 23:06:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b758c393f783c6436959f2634995e5d4bbaeb5ad2a35d0fe7643d0e51c85433f`  
		Last Modified: Tue, 13 Oct 2026 23:06:08 GMT  
		Size: 5.0 KB (5001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ad7508cc910af494531e37ec39a14d4b6dc5f0b121e124aef5b5a156808a26`  
		Last Modified: Tue, 13 Oct 2026 23:06:09 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d0bed2257ae6e35b582437ffdaa4c2e7086410f998a630501731023ddf8774`  
		Last Modified: Tue, 13 Oct 2026 23:06:09 GMT  
		Size: 73.5 KB (73455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2dc2e0da69cc8f3a263a983474e3affe4232ae3b1395886709c26bc758b8811`  
		Last Modified: Tue, 13 Oct 2026 23:06:10 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ea73f76122eb58705a0aef1606576c8bf2cff5c05f021bce18574fb8f19b3e`  
		Last Modified: Tue, 13 Oct 2026 23:06:11 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:2560a4d4d35339403089b5a097ca53827c7c69967de8d361ecbe38a46cdc6bea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6137498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8924301b3966b8bd4418148a4f766c88b960ee4bcef99c35ff457c2a7b51e62`

```dockerfile
```

-	Layers:
	-	`sha256:8eed27385e27521c1f60445a8697bad3e4d4df6c87c8009b6b71d6e4a2520ce6`  
		Last Modified: Tue, 13 Oct 2026 23:06:06 GMT  
		Size: 6.1 MB (6094015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91838be2792668dd6394e4261fb3111106cfc3e960a49f7860f7ae72d9891613`  
		Last Modified: Tue, 13 Oct 2026 23:06:05 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
